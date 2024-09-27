FROM node:20.17.0@sha256:17ed4afc1466aefe91add68c6c585f8f688ed0f2494b355269f038b522d784c6

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
