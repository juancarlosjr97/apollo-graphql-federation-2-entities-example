FROM node:20.12.1@sha256:3b676479124ebdb0348f540e5c8b64f959ec1358cea05080b711d965f5353a34

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
