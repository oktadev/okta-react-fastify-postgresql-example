import fastifyPostgres from "@fastify/postgres";
import Fastify, { FastifyInstance } from "fastify";
import routes from "./routes/root";
import * as dotenv from 'dotenv';

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

fastify.register(fastifyPostgres, {
	connectionString: process.env.CONNECTION_STRING,
});

fastify.register(routes);

const start = async () => {
	try {
		await fastify.listen({port: 3000});
	} catch (err) {
		fastify.log.error(err);
		process.exit(1);
	}
};
start();