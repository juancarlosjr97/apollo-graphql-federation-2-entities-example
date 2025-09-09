FROM node:22.19.0@sha256:978e96850e9e828eda68610829a01f70317e353dcd3d146f2fff93880f13dcb4

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
