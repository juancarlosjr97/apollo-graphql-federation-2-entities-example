FROM node:22.13.0@sha256:4f7fb7f5f716f2175f5e7716f2a6cb310e82f3c72152b78d8c1ff58068988c0b

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
