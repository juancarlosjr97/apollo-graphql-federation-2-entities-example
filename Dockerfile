FROM node:24.12.0@sha256:50113f9d3a239ce9e523550e46363d3a8ca7b58f6af70fd9ecb4698b2ad89ccb

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
