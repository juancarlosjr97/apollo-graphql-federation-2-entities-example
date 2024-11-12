FROM node:22.11.0@sha256:f496dba5f685ef33797ed5882b4ce209053db67f88b50c1484ecccba6531bfde

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
