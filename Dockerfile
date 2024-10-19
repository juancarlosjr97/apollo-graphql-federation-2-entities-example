FROM node:20.18.0@sha256:a5e0ed56f2c20b9689e0f7dd498cac7e08d2a3a283e92d9304e7b9b83e3c6ff3

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
