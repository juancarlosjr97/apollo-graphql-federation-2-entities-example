FROM node:20.15.0@sha256:940071b4e4c9918c40c632a4b51861aded3087696a2847a5d8ecff3546eb13ce

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
