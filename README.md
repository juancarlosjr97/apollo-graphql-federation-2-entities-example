# Apollo GraphQL Federation 2 Entities Example

This project demonstrates how to use entities running Apollo GraphQL Federation 2.

## Prerequisites

- Docker

## Overview

This project leverages Apollo Federation to streamline the sharing of entities between interconnected GraphQL subgraphs. This documentation dives into how the entities, specifically the Data type, are shared and extended across two subgraphs.

### Shared Entities

In GraphQL, the `Data` type is a shared entity across multiple subgraphs, allowing for modular development, easy extension and separation of concerns.

#### Subgraph A

In the first subgraph, the `Data` type as follow:

```graphql
type Data @shareable @key(fields: "code id language") {
  code: Code! @inaccessible
  id: String! @inaccessible
  language: Language @inaccessible
  nickname: String
}
```

The `Data` type is defined with key fields and marked as [@shareable](https://www.apollographql.com/docs/federation/federated-types/federated-directives/#shareable). This directive, part of Apollo Federation, allows the type to be accessed and extended by other subgraphs. The [@key](https://www.apollographql.com/docs/federation/federated-types/federated-directives/#key) directive is also used, defining the Data type as an [entity](https://www.apollographql.com/docs/federation/entities/). An entity is an object type that can resolve its fields across multiple subgraphs. Each subgraph can contribute different fields to the entity, and it is responsible for resolving only the fields that it contributes in this case both subgraphs resolve the type `Data`.

#### Subgraph B

The second subgraph extends the schema from Subgraph A and introduces new fields to the shared Data type, such as description.

```graphql
type Data @key(fields: "code id language") {
  code: Code! @external @inaccessible
  id: String! @external @inaccessible
  language: Language @external @inaccessible
  meta: String
}
```

The `code`, `id` and `language` are marked as [@inaccessible](https://www.apollographql.com/docs/federation/federated-types/federated-directives/#inaccessible) so they are omitted from the composed supergraph schema and [@external](https://www.apollographql.com/docs/federation/federated-types/federated-directives/#external) indicating that this subgraph cannot resolve a particular object field, but it still needs to define that field for other purposes and in this case for the [@key](https://www.apollographql.com/docs/federation/federated-types/federated-directives/#key).

### Example Query

```graphql
query Data($id: String!, $code: Code!, $language: Language) {
  data(id: $id, code: $code, language: $language) {
    meta
    nickname
  }
}
```

With the following variables

```json
{
  "id": "TheOnlyOne",
  "code": "JCBD",
  "language": "EN"
}
```

And the expected response is

```json
{
  "data": {
    "data": {
      "meta": "ID: TheOnlyOne - Code: JCBD - Language: EN",
      "nickname": "JC"
    }
  }
}
```

The `meta` field in Subgraph B is dynamically resolved by the resolver at [index.mjs#L34](./packages/subgraph-b/src/index.mjs#L34), taking into account the values of the compound key. This means that the content of the meta field is tailored based on the specific input provided by the variables and the values set on the resolver of Subgraph A at [index.mjs#L37-L39](./packages/subgraph-a/src/index.mjs#L37-L39).

## Development

To run GraphQL Federation, execute the following command:

```bash
docker-compose up
```

Once the two subgraphs and the gateway are ready, you can access the Apollo Gateway at http://localhost:4000 in your web browser to run the queries.
