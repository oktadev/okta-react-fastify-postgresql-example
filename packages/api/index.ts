import fastifyPostgres from "@fastify/postgres";
import fastifyPassport from "@fastify/passport";
import fastifySecureSession from "@fastify/secure-session";
import Fastify, { FastifyInstance, RouteShorthandOptions } from "fastify";
import * as dotenv from "dotenv";
import path from "path";
import * as fs from "fs";
import axios from "axios";
import cors from "@fastify/cors";
import { JWTVerifier } from "./util/jwtVerifier";
import authRoutes from "./routes/auth";
import facilitiesRoutes from "./routes/facilities";

var { Strategy } = require("passport-openidconnect");
dotenv.config();

const fastify: FastifyInstance = Fastify({
  logger: {
    serializers: {
      res(reply) {
        return {
          statusCode: reply.statusCode,
        };
      },
      req(request) {
        return {
          method: request.method,
          url: request.url,
        };
      },
    },
  },
});

//TODO: fix CORS errors
fastify.register(cors, (instance) => {
  return (req, callback) => {
    const corsOptions = {
      // This is NOT recommended for production as it enables reflection exploits
      origin: true,
      allowedHeaders: [
        "Origin",
        "X-Requested-With",
        "Accept",
        "Content-Type",
        "Authorization",
      ],
      methods: ["GET", "PUT", "PATCH", "POST", "DELETE"],
    };

    // do not include CORS headers for requests from localhost
    if (/^localhost$/m.test(req.headers.origin || "")) {
      corsOptions.origin = false;
    }

    // callback expects two parameters: error and options
    callback(null, corsOptions);
  };
});

fastify.register(fastifySecureSession, {
  key: fs.readFileSync(path.join(__dirname, "..", "secret-key")),
});
fastify.register(fastifyPassport.initialize());
fastify.register(fastifyPassport.secureSession());

axios
  .get(`${process.env.OKTA_ISSUER}/.well-known/openid-configuration`)
  .then((res) => {
    if (res.status == 200) {
      let {
        issuer,
        authorization_endpoint,
        token_endpoint,
        userinfo_endpoint,
        end_session_endpoint,
      } = res.data;

      fastifyPassport.use(
        "oidc",
        new Strategy(
          {
            issuer,
            authorizationURL: authorization_endpoint,
            tokenURL: token_endpoint,
            userInfoURL: userinfo_endpoint,
            clientID: process.env.OKTA_CLIENT_ID,
            clientSecret: process.env.OKTA_CLIENT_SECRET,
            callbackURL: "http://localhost:3000/authorization-code/callback",
            scope: ["openid", "email", "profile"],
          },
          async (
            issuer: any,
            profile: any,
            context: any,
            idToken: any,
            accessToken: any,
            refreshToken: any,
            params: any,
            done: (arg0: any, arg1: any) => any
          ) => {
            try {
              console.log(
                `OIDC response: ${JSON.stringify(
                  {
                    issuer,
                    profile,
                    context,
                    idToken,
                    accessToken,
                    refreshToken,
                    params,
                  },
                  null,
                  2
                )}\n*****`
              );

              return done(null, profile);
            } catch (err) {
              done(err, null);
            }
          }
        )
      );
    } else {
      console.log(
        `Unable to reach the well-known endpoint. Are you sure that the ORG_URL you provided (${process.env.OKTA_ISSUER}) is correct?`
      );
    }
  })
  .catch((error) => {
    console.error(error);
  });

//TODO: use user?
fastifyPassport.registerUserSerializer(async (user: any, request) => user.id);
fastifyPassport.registerUserDeserializer(async (id, request) => {
  return await console.log({ id });
});

fastify.register(fastifyPostgres, {
  connectionString: process.env.CONNECTION_STRING,
});

fastify.register(authRoutes);
fastify.register(facilitiesRoutes);

const start = async () => {
  try {
    await fastify.listen({ port: 3000 });
  } catch (err) {
    fastify.log.error(err);
    process.exit(1);
  }
};
start();
