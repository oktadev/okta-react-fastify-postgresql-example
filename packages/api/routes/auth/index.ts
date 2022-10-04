import { RouteShorthandOptions } from "fastify";
import fastifyPassport from "@fastify/passport";

const authOpts: RouteShorthandOptions = {
  schema: {
    response: {
      200: {
        type: "object",
        properties: {
          authenticated: {
            type: "string",
          },
        },
      },
    },
  },
};

async function authRoutes(fastify: any, options: any) {
  fastify.get("/auth", authOpts, fastifyPassport.authenticate("oidc"));

  fastify.get(
    "/authorization-code/callback",
    async (request: any, reply: any) => {
      return { authenticated: "true" };
    }
  );
}

export default authRoutes;

//TODO: fix any types
