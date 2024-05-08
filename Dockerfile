FROM node:20.13.0@sha256:b6e7fef05c7609784c320e5c746aaf8d49221ec0eb3c1242fb673099511b0583

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
