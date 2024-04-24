FROM node:20.12.2@sha256:ec31b4e7762901e0a1cbf5a82ffd66c9798057c50f1b6f33a0089cf0bbbcffed

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
