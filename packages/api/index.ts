import fastifyPostgres from "@fastify/postgres";
import fastifyPassport from "@fastify/passport";
import fastifySecureSession from "@fastify/secure-session";
import Fastify, { FastifyInstance } from "fastify";
import * as dotenv from "dotenv";
import path from "path";
import * as fs from "fs";

var OktaStrategy = require("passport-okta-oauth").Strategy;
dotenv.config();

const server: FastifyInstance = Fastify({
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

server.register(fastifySecureSession, {
  key: fs.readFileSync(path.join(__dirname, "..", "secret-key")),
});
server.register(fastifyPassport.initialize());
server.register(fastifyPassport.secureSession());

fastifyPassport.use(
  "oktaAuth",
  new OktaStrategy(
    {
      audience: process.env.OKTA_AUDIENCE,
      clientID: process.env.OKTA_CLIENT_ID,
      clientSecret: process.env.OKTA_CLIENT_SECRET,
      scope: ["openid", "email", "profile"],
      // callbackURL: process.env.OKTA_BASE_URI + "/",
    },
    async (
      accessToken: any,
      refreshToken: any,
      profile: any,
      cb: (arg0: unknown, arg1: unknown) => void
    ) => {
      try {
        cb(null, profile);
      } catch (err) {
        cb(err, null);
      }
    }
  )
);

server.register(fastifyPostgres, {
  connectionString: process.env.CONNECTION_STRING,
});

server.get("/facilities", async () => {
  const client = await server.pg.connect();
  let facilities: any = [];

  try {
    const { rows } = await client.query("SELECT * FROM facilities");
    if (rows.length == 0) throw new Error("No facilities found");

    facilities = rows;
  } finally {
    client.release();
  }

  return facilities;
});

server.post(
  "/login",
  {
    preValidation: fastifyPassport.authenticate("oktaAuth", {
      authInfo: false,
    }),
  },
  () => {}
);

const start = async () => {
  try {
    await server.listen({ port: 3000 });
  } catch (err) {
    server.log.error(err);
    process.exit(1);
  }
};
start();
