FROM node:20.14.0@sha256:02cd2205818f121c13612721876f28c18bd50148bb8af532ea121c96ffcb59bf

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
