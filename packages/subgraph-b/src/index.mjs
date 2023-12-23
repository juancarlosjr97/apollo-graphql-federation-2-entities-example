import { ApolloServer } from "@apollo/server";
import { buildSubgraphSchema } from "@apollo/subgraph";
import { gql } from "graphql-tag";
import { startStandaloneServer } from "@apollo/server/standalone";

const typeDefs = gql`
  extend schema
    @link(
      url: "https://specs.apollo.dev/federation/v2.6"
      import: ["@external", "@inaccessible", "@key"]
    )

  type Data @key(fields: "code id language") {
    code: Code! @inaccessible
    id: String! @external
    language: Language @inaccessible
    meta: String
  }

  enum Code {
    JCBD
  }

  enum Language {
    EN
    ES
  }
`;

const resolvers = {
  Data: {
    __resolveReference({ id, code, language }) {
      return {
        meta: `ID: ${id} - Code: ${code} - Language: ${language}`,
      };
    },
  },
};

const server = new ApolloServer({
  schema: buildSubgraphSchema([{ typeDefs, resolvers }]),
});

const { url } = await startStandaloneServer(server, {
  listen: { port: process.env.PORT },
});

console.log(`🚀 Apollo Subgraph B ready at ${url}`);
