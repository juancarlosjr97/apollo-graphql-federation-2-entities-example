FROM node:20.11.0@sha256:995604955bac96510e19943ca0e10297217ffdb14affff76e07d3c3696f44afc

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
