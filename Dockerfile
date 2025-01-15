FROM node:22.13.0@sha256:d77c6457d4318c6ef537dbf9fe86f36bfb997d280c9f949e3a1d968cf841390d

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
