FROM node:20.18.0@sha256:d7c25dbb3da3f8d9990073780e3c1eb0f0c68a55ef5adf402aa96fb4ee49f6e1

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
