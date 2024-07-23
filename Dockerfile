FROM node:20.15.1@sha256:34cc48658dd212db8b5494311c4a0d1c31121a172f89475e2dbd3dbe851d515c

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
