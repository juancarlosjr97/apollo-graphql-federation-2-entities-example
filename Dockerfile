FROM node:20.10.0@sha256:8041e38bd6bf93d476694aac10c788e4ec3bd155d3e3f751dabd58a3eb35e3a1

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
