FROM node:20.15.0@sha256:c85db7ec0c2cbedc73f417b890e0b08ecdf5316f858033316d6566ee11715158

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
