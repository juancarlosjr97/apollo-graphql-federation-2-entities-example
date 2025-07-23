FROM node:22.17.1@sha256:e515259afd26f60db74957c62203c93d45760f2ba864d94accfa2edfc1ac17cf

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
