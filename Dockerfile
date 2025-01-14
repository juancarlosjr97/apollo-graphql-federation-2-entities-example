FROM node:22.13.0@sha256:816f04d578545be8f3faadaefaa0926c65e67056d9bf2864009976380c2b0713

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
