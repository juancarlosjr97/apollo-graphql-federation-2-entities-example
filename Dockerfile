FROM node:22.19.0@sha256:dc081610647ddc0010be25151ad49eac522e4d3a9bc0d614be8ff8b68c7c9654

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
