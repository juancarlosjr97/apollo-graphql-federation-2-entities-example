FROM node:22.20.0@sha256:4973262386dc1cb70f7d6fc48a855027d8f12d2d3b1fe559b9db9a4fcb74668f

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
