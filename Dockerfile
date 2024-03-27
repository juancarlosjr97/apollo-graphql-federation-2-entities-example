FROM node:20.12.0@sha256:e1fdcf419bceaa3d4a344eeb942d8186e41f4a614fe97c183ad753e19e4ae935

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
