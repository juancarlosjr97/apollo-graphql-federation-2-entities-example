FROM node:22.13.1@sha256:debe7ff79b1a92c699629d685c4b69ba531172d6dfd89e145fa528bfb18eefb7

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
