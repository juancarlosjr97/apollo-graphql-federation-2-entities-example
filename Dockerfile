FROM node:24.10.0@sha256:06e54ecf113a30f0ff9a1d309866a5924d3bda4389eab11a0e1e92f3251d915d

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
