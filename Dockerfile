FROM node:20.12.1@sha256:8a03de2385cb16c4d76aac30bf86ab05f55f1754a5402dc9039916e8043f019a

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
