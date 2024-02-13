FROM node:20.11.0@sha256:7bf4a586b423aac858176b3f683e35f08575c84500fbcfd1d433ad8568972ec6

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
