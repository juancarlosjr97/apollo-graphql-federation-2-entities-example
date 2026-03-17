FROM node:24.14.0@sha256:6c0cc63a66a456c4574e230e5aec3cd0255bf718b93ebd785361bdc4688a07e6

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
