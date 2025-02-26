FROM node:22.14.0@sha256:f6b9c31ace05502dd98ef777aaa20464362435dcc5e312b0e213121dcf7d8b95

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
