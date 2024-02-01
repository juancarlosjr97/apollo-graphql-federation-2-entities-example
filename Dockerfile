FROM node:20.11.0@sha256:33bfe51ff32a17d6cfb5bca5ae2743a9b2390ac99dcffde543565bb83b1fb786

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
