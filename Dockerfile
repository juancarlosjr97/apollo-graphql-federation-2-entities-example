FROM node:22.16.0@sha256:6a2972b55a5032ed961f5239c7a829c439fb54fc1d99ca5dccb2094860a47b97

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
