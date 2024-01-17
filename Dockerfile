FROM node:20.11.0@sha256:ffebb4405810c92d267a764b21975fb2d96772e41877248a37bf3abaa0d3b590

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
