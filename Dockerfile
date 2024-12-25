FROM node:22.12.0@sha256:f7354aa281a8d45e44f4d28269200e1c412e9b41188599326a49506e01a89f97

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
