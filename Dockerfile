FROM node:20.16.0@sha256:e2a49673f0979e93bf66211ec49a099b5280a876719d46b91644e132725e7a4c

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
