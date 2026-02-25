FROM node:24.14.0@sha256:dcac36e9d0d3049214862dac30af9f1ee86fccaa8d3bd3a0399b59d6f1bec0eb

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
