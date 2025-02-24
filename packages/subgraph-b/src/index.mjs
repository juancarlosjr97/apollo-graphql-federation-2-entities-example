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
    total: Total
  }

  enum Code {
    JCBD
  }

  enum Language {
    EN
    ES
  }

  type Total {
    extendedPrice: Money
  }

  type Money {
    formattedAmount: String
  }
`;

const resolvers = {
  Data: {
    __resolveReference({ id, code, language }) {
      return {
        meta: `ID: ${id} - Code: ${code} - Language: ${language}`,
        total: {
          extendedPrice: "original",
        },
      };
    },
  },
  Money: {
    formattedAmount: (parentValue, __, ____, { variableValues }) => {
      /**
       * `parentValue` represents the hardcoded value on line 45, which is `original`.
       *
       * `variableValues` is in the format of `{ representations: [Values from @key] }`. For example:
       * `{"representations":[{"__typename":"Data","code":"JCBD","id":"TheOnlyOne","language":"EN"}]}`
       *
       * Given `variableValues` does not represent a single value but rather a list from all the responses.
       */

      /**
       * How can I identify the parent values that are from the parent from `variableValues`?
       *
       * In other words, how can I return a formatted value for languages UK and ES
       * if I do not which index is getting processed.
       */
      console.log(JSON.stringify({ parentValue, variableValues }, null, 4));
      return "formattedAmount";
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
