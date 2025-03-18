FROM node:22.14.0@sha256:83355e9c59b3201495ef828a92feb8b16f57f50f5ac125781f17439f12c62e82

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
