FROM node:22.14.0@sha256:2094ac60fa9f3df66c87f93e3ec4ab1e296f0a4d2ba3eed3f2d367529a3118b1

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
