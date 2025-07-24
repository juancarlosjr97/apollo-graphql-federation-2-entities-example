FROM node:22.17.1@sha256:37ff334612f77d8f999c10af8797727b731629c26f2e83caa6af390998bdc49c

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
