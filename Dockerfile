FROM node:22.10.0@sha256:da53547a061beb7f11f58ee2231589b999acfca89bdf6dfd740627340c879f63

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
