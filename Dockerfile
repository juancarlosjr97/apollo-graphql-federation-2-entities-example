FROM node:20.15.0@sha256:f172e4a7393cef2252c16f5f38d7abcf2cc0fd46c181c0ed5006cf3332e01173

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
