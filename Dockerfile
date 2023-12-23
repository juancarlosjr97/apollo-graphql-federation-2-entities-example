FROM node:20.10.0@sha256:e36ac0440a12839563ad011aabdd3152d6101a9d285126f86b2de5cd7f667712

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
