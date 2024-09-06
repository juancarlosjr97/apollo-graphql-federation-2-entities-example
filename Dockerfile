FROM node:20.17.0@sha256:48db4f6ea21d134be744207225753a1730c4bc1b4cdf836d44511c36bf0e34d7

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
