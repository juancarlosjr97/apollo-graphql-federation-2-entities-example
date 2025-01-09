FROM node:22.13.0@sha256:99981c3d1aac0d98cd9f03f74b92dddf30f30ffb0b34e6df8bd96283f62f12c6

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
