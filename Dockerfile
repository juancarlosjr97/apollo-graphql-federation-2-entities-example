FROM node:20.13.1@sha256:5e362bbb5ef4c6f6e2c86a27b7269b3b3e4bd8dba16be18037ee7ee4caa8afc1

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
