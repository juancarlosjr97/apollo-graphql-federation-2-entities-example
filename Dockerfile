FROM node:20.18.0@sha256:fffa89e023a3351904c04284029105d9e2ac7020886d683775a298569591e5bb

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
