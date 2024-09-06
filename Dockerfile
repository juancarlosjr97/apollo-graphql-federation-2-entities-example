FROM node:20.17.0@sha256:35e3b7fc91f95fc3c9dd76348f7bc5a7aa7525cbf6bc6363333b4c3d6a41e0f4

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
