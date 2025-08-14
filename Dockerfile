FROM node:22.18.0@sha256:73297e219c73d998158945abd3dbc648c2756d610191da1498b2749c208614dd

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
