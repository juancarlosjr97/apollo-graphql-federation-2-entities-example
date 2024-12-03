FROM node:22.11.0@sha256:cb244536f6047c0057f1c6d90ae404880155c49b78fe2e8f25ef90c4fa7127a6

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
