FROM node:20.12.1@sha256:378e7b82c3846dd5cf2df24f54f51cf9fa0ca4771963609ff9b60f7ca8bbbd2b

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
