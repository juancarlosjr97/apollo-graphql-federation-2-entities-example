FROM node:20.15.0@sha256:b849bc4078c3e16a38d72749ab8faeacbcc6c3bdb742399b4a5974a89fc93261

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
