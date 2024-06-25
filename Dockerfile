FROM node:20.15.0@sha256:4db67aec2ba104897ac9af929efdbc0c95a026cb986ed83cea29fb3bb46b0506

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
