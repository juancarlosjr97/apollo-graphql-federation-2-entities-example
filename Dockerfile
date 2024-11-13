FROM node:22.11.0@sha256:db556c2974040f7812c7f39c15afb1e8b1901d6e23f1975ff71b5236a1244e52

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
