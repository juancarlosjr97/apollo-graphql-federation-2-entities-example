FROM node:20.17.0@sha256:4bc7ea5c063e6879b1888775595f48269d125b5f4ecaa6dfe6927397360938e8

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
