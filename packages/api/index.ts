import fastifyPostgres from "@fastify/postgres";
import Fastify, { FastifyInstance, FastifyRequest } from "fastify";
import * as dotenv from "dotenv";
import facilitiesRoutes from "./routes/facilities";
import { jwtVerifier } from "./utils/jwt-verifier";

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

fastify.decorate("jwtVerify", (request: FastifyRequest) => {
  fastify.log.info(`The incoming request is: ${JSON.stringify(request)}`);
});

fastify.addHook("preHandler", async (request, reply, done) => {
  return jwtVerifier(request, reply);
});

fastify.register(fastifyPostgres, {
  connectionString: process.env.CONNECTION_STRING,
});

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
