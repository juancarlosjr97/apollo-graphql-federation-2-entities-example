FROM node:22.19.0@sha256:6fe286835c595e53cdafc4889e9eff903dd3008a3050c1675809148d8e0df805

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
