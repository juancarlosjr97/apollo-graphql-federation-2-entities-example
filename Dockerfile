FROM node:20.10.0@sha256:8d0f16fe841577f9317ab49011c6d819e1fa81f8d4af7ece7ae0ac815e07ac84

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
