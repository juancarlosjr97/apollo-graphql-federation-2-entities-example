FROM node:22.16.0@sha256:71bcbb3b215b3fa84b5b167585675072f4c270855e37a599803f1a58141a0716

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
