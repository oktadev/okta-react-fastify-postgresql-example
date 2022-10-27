import { FastifyReply, FastifyRequest } from "fastify";
import { jwtVerifier } from "../../utils/jwt-verifier";

async function facilitiesRoutes(fastify: any, options: any) {
  const client = await fastify.pg.connect();

  fastify.get(
    "/facilities",
    async (request: FastifyRequest, reply: FastifyReply) => {
      let facilities: any = [];

      try {
        const { rows } = await client.query("SELECT * FROM facilities");
        if (rows.length == 0) throw new Error("No facilities found");

        facilities = rows;
        reply
          .code(200)
          .header("Content-Type", "application/json; charset=utf-8")
          .send([...facilities]);
      } catch (error) {
        const errorMessage = (error as Error).message;
        throw new Error(errorMessage);
      }
    }
  );

  fastify.patch(
    "/facilities/:id",
    async (request: FastifyRequest, reply: FastifyReply) => {
      const { id } = request.params as { id: bigint };
      const { visited } = request.body as { visited: boolean };

      const query = {
        text: `UPDATE public.facilities SET 
                "Visited" = COALESCE($1, "Visited")
                WHERE id = $2`,
        values: [visited, id],
      };

      try {
        await client.query(query);
        reply.code(204);
      } catch (error) {
        const errorMessage = (error as Error).message;
        throw new Error(errorMessage);
      }
    }
  );

  fastify.delete(
    "/facilities/:id",
    async (request: FastifyRequest, reply: FastifyReply) => {
      const { id } = request.params as { id: bigint };

      const query = {
        text: `DELETE FROM public.facilities
                  WHERE id = $1 RETURNING *`,
        values: [id],
      };

      try {
        await client.query(query);
        reply.code(204);
      } catch (error) {
        const errorMessage = (error as Error).message;
        throw new Error(errorMessage);
      }
    }
  );
}

export default facilitiesRoutes;
//TODO: fix types
