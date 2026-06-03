FROM node:24.16.0@sha256:8530f76a96d88820d288761f022e318970dda93d01536919fbc16076b7983e63

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
