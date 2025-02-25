FROM node:22.14.0@sha256:c3ef15af9be4505fde55589eadf42b4757a91e6b1b3be796bdec0f86560205e9

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
