import { ApolloServer } from "@apollo/server";
import { buildSubgraphSchema } from "@apollo/subgraph";
import { gql } from "graphql-tag";
import { startStandaloneServer } from "@apollo/server/standalone";

const typeDefs = gql`
  extend schema
    @link(
      url: "https://specs.apollo.dev/federation/v2.6"
      import: ["@inaccessible", "@key", "@shareable"]
    )

  type Query {
    data(code: Code!, id: String!, language: Language = "EN"): Data
  }

  type Data @shareable @key(fields: "code id language") {
    code: Code! @inaccessible
    id: String! @inaccessible
    language: Language @inaccessible
    nickname: String
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
  Query: {
    data: (_, { id, code, language }) => ({
      code,
      id,
      language,
      nickname: "JC",
    }),
  },
};

const server = new ApolloServer({
  schema: buildSubgraphSchema([{ typeDefs, resolvers }]),
});

const { url } = await startStandaloneServer(server, {
  listen: { port: process.env.PORT },
});

console.log(`🚀 Apollo Subgraph A ready at ${url}`);
