import OktaJwtVerifier from "@okta/jwt-verifier";
import dotenv from "dotenv";
import { FastifyReply, FastifyRequest } from "fastify";

dotenv.config();

const oktaJwtVerifier = new OktaJwtVerifier({
  issuer: process.env.OKTA_ISSUER || "",
  clientId: process.env.OKTA_CLIENT_ID,
  // To check for specific claims, add them below.
  // For more information, see:
  // https://developer.okta.com/docs/guides/customize-tokens-returned-from-okta/main/#add-a-custom-claim-to-a-token
  // assertClaims: {
  //   "scp.includes": ["api"],
  // },
});

const audience = process.env.OKTA_AUDIENCE;

export const jwtVerifier = async (
  request: FastifyRequest,
  reply: FastifyReply
) => {
  const { authorization } = request.headers;

  request.log.info({ authorization });

  const match = authorization?.match(/Bearer (.+)/);

  if (!match) {
    return reply.status(401).send();
  }

  if (!authorization || !match) {
    reply.code(401).send();
  }

  try {
    const accessToken = match[1];
    const { claims } = await oktaJwtVerifier.verifyAccessToken(
      accessToken,
      audience || ""
    );

    request.log.info({ claims });

    if (!claims) {
      reply.code(401).send();
    }
  } catch (err) {
    console.log(err);
    reply.code(401).send();
  }
};
