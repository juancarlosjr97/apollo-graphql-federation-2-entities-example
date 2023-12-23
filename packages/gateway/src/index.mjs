import { ApolloServer } from "@apollo/server";
import { startStandaloneServer } from "@apollo/server/standalone";
import { ApolloGateway, IntrospectAndCompose } from "@apollo/gateway";

const gateway = new ApolloGateway({
  supergraphSdl: new IntrospectAndCompose({
    subgraphs: [
      {
        name: "subgraph-a",
        /**
         * SUBGRAPH_A_ENDPOINT defined on the Dockerfile
         */
        url: process.env.SUBGRAPH_A_ENDPOINT,
      },
      {
        name: "subgraph-b",
        /**
         * SUBGRAPH_B_ENDPOINT defined on the Dockerfile
         */
        url: process.env.SUBGRAPH_B_ENDPOINT,
      },
    ],
  }),
});

const server = new ApolloServer({
  gateway,
});

const { url } = await startStandaloneServer(server, {
  listen: { port: process.env.PORT },
});

console.log(`🚀 Apollo Gateway ready at ${url}`);
