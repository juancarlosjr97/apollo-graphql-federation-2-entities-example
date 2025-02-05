FROM node:22.13.1@sha256:3962f5a3aa1ebc1d82a1897a4a5f2db9ebdf2233edf521bdd7bdfb754284b366

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
