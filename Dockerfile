FROM node:24.12.0@sha256:b52a8d1206132b36d60e51e413d9a81336e8a0206d3b648cabd6d5a49c4c0f54

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
