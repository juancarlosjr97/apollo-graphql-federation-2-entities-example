FROM node:20.15.0@sha256:a12ce152ab63dbeb232fcbcd0e9fdfbee6e6443d57785915967893ce9e7c58ba

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
