FROM node:20.11.0@sha256:a6835f377da19e4d98dd598b26a9a0cded4a9c993b1bf59718aa539d3a581a16

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
