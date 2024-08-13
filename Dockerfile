FROM node:20.16.0@sha256:b6778b063d7ba271af6560b62b1c23463d8dd14185dde5c5dd41ecd2bfef3000

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
