FROM node:24.15.0@sha256:34f0eb9d36f5163c16e8157aaa50c3bbb7a03aa744ce8668549d6f71d98b69cf

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
