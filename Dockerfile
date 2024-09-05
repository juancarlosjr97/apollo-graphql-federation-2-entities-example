FROM node:20.17.0@sha256:e3de1da7f2cc6ca3065fdd013513b72791f10a6dbdfdc05563800b5318a309cc

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
