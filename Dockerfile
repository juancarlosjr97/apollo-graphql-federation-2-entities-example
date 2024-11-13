FROM node:22.11.0@sha256:6eb1af33c8fc1104f23efdd15f1e791570395eab3d0fb597087d18a4ab1f7b65

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
