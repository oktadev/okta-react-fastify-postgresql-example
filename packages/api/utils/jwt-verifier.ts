import OktaJwtVerifier from "@okta/jwt-verifier";
import dotenv from "dotenv";
import { FastifyReply, FastifyRequest } from "fastify";
//TODO: assertClaims

dotenv.config();

const oktaJwtVerifier = new OktaJwtVerifier({
  issuer: process.env.OKTA_ISSUER || "",
  clientId: process.env.OKTA_CLIENT_ID,
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

  const [token] = authorization?.trim().split(" ") || "";
  request.log.info({ token });

  if (!authorization || !token) {
    reply.code(401).send();
  }

  try {
    const { claims } = await oktaJwtVerifier.verifyAccessToken(
      token,
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
