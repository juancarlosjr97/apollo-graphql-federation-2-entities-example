FROM node:20.11.1@sha256:cbdfb793208fd6e63664b4d4e1a539a8b69e7c1f69c49dd55ca6e016074744fd

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
