FROM node:22.17.1@sha256:079b6a683dc47a87673a6159c9e9b22b0687d04533087cf144c96fac8c26ecd3

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
