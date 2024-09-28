FROM node:20.17.0@sha256:11dff346595c72894fe1166b08fbc9f7af40bb913f036724cb33e5c4ae6dc6e1

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
