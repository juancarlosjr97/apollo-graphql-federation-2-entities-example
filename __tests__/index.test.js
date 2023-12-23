const gql = require("graphql-tag");

const endpoint = "http://localhost:4000/";

const QUERY = gql`
  query Data($id: String!, $code: Code!, $language: Language) {
    data(id: $id, code: $code, language: $language) {
      meta
      nickname
    }
  }
`;

describe("Testing query with entities", () => {
  test("should return data resolved by Subgraph A and Subgraph B", async () => {
    const testCode = "JCBD";
    const testId = "TheOnlyOne";
    const testLanguage = "EN";

    const variables = {
      code: testCode,
      id: testId,
      language: testLanguage,
    };

    const options = {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        query: QUERY.loc.source.body,
        variables,
      }),
    };

    const expectedResponse = {
      data: {
        data: {
          meta: `ID: ${testId} - Code: ${testCode} - Language: ${testLanguage}`,
          nickname: expect.any(String),
        },
      },
    };

    const response = await fetch(endpoint, options);
    const data = await response.json();

    expect(data).toEqual(expectedResponse);
  });
});
