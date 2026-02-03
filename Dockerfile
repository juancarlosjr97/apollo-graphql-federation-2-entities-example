FROM node:24.13.0@sha256:bdc72529eb387cb3a2c0ef0c7c45192ef29600db5a3d62f0d6e62d59752df718

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
