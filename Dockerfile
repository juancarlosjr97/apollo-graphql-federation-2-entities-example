FROM node:20.15.0@sha256:fb4395cc0700af7f1fcfd7551ed0dca6625df5293b6ba2d57cc12422a4f52e0d

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
