FROM node:20.17.0@sha256:a4d1de4c7339eabcf78a90137dfd551b798829e3ef3e399e0036ac454afa1291

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
