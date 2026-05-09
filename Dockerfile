FROM node:24.15.0@sha256:050bf2bbe33c1d6754e060bec89378a79ed831f04a7bb1a53fe45e997df7b3bb

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
