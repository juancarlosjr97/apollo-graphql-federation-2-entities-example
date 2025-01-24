FROM node:22.13.1@sha256:ae2f3d4cc65d251352eca01ba668824f651a2ee4d2a37e2efb22649521a483fd

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
