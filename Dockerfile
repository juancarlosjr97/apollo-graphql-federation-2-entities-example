FROM node:20.11.0@sha256:0d2dae60fe3ad12418e7e2c994f356065554b44824b3461c80d8b9ea645ba1ac

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
