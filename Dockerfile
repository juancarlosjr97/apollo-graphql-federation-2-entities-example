FROM node:22.15.0@sha256:c9397a508192cf0c591e1923fe88d7dad25c586cf5fa73ce4b8889427747f230

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
