import { FastifyInstance } from "fastify";

async function routes(fastify: FastifyInstance) {
	fastify.get("/", async () => {
		const client = await fastify.pg.connect();
		let facilities: any = [];

			try {
				const { rows } = await client.query(
				  "SELECT * FROM facilities"
				);
				if (rows.length == 0) throw new Error("No facilities found");

				facilities=rows;

			      } finally {
				client.release();
			      }
			      return facilities;
	});
}

export default routes;