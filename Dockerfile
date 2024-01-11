FROM node:20.11.0@sha256:2a95019385dcd3a7f7281bc8f2bab54d95914b6766f75d220acf44451ab65ba3

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
