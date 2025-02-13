FROM node:22.14.0@sha256:cfef4432ab2901fd6ab2cb05b177d3c6f8a7f48cb22ad9d7ae28bb6aa5f8b471

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
