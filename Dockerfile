FROM node:24.11.1@sha256:7f80506b8225bcce2ce8202b1026fcde8f0bfb716b1b833f20250d79d4463276

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
