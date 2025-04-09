FROM node:22.14.0@sha256:e5ddf893cc6aeab0e5126e4edae35aa43893e2836d1d246140167ccc2616f5d7

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
