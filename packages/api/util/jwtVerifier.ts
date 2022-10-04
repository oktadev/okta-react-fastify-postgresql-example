import OktaJwtVerifier from "@okta/jwt-verifier";
import {
  FastifyRequest,
  RawServerDefault,
  FastifySchema,
  FastifyTypeProviderDefault,
  FastifyBaseLogger,
  FastifyReply,
} from "fastify";
import { RouteGenericInterface } from "fastify/types/route";
import { ResolveFastifyRequestType } from "fastify/types/type-provider";
import { IncomingMessage, ServerResponse } from "http";

const oktaJwtVerifier = new OktaJwtVerifier({
  issuer: process.env.OKTA_ISSUER || "",
  clientId: process.env.OKTA_CLIENT_ID,
});

export const JWTVerifier =
  (
    request: FastifyRequest<
      RouteGenericInterface,
      RawServerDefault,
      IncomingMessage,
      FastifySchema,
      FastifyTypeProviderDefault,
      unknown,
      FastifyBaseLogger,
      ResolveFastifyRequestType<
        FastifyTypeProviderDefault,
        FastifySchema,
        RouteGenericInterface
      >
    >,
    reply: FastifyReply<
      RawServerDefault,
      IncomingMessage,
      ServerResponse<IncomingMessage>,
      RouteGenericInterface,
      unknown,
      FastifySchema,
      FastifyTypeProviderDefault,
      unknown
    >
  ) =>
  async (
    request: { headers: { authorization: any } },
    response: {
      code: (arg0: number) => {
        (): any;
        new (): any;
        send: { (): void; new (): any };
      };
    }
  ) => {
    const { authorization } = request.headers;

    if (!authorization) {
      response.code(401).send();
    }

    const [authType, token] = authorization.trim().split(" ");

    try {
      const { claims } = await oktaJwtVerifier.verifyAccessToken(
        token,
        process.env.OKTA_AUDIENCE || ""
      );

      console.log({ claims });

      if (!claims) {
        response.code(401).send();
      }
      if (!claims.scp?.includes("api")) {
        response.code(401).send();
      }
    } catch (err) {
      console.log(err);
      response.code(401).send();
    }
  };
