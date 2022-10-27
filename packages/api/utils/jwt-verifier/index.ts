import OktaJwtVerifier from "@okta/jwt-verifier";
import dotenv from "dotenv";
import path from "path";

const oktaJwtVerifier = new OktaJwtVerifier({
  issuer: "https://dev-38785272.okta.com/oauth2/default",
  clientId: "0oa5y0j1hnOWA4J3W5d7",
});

export const jwtVerifier = async (
  request: any,
  response: {
    code: (arg0: number) => {
      (): any;
      new (): any;
      send: { (): void; new (): any };
    };
  }
) => {
  const { authorization } = request.headers;

  if (!authorization) {
    response.code(401).send();
  }
  request.log.info({ authorization });

  const [authType, token] = authorization.trim().split(" ");

  //   oktaJwtVerifier.verifyAccessToken(accessTokenString, expectedAud)
  // .then(jwt => {
  //   // the token is valid (per definition of 'valid' above)
  //   console.log(jwt.claims);
  // })
  // .catch(err => {
  //   // a validation failed, inspect the error
  // });

  try {
    const { claims } = await oktaJwtVerifier.verifyAccessToken(
      token,
      "api://default"
    );

    if (!claims) {
      response.code(401).send();
    }
    if (!claims.scp?.includes("api")) {
      response.code(401).send();
    }
  } catch (err) {
    console.log(err);
    response.code(401).send();
  }
};
