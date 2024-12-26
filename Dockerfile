FROM node:22.12.0@sha256:0e910f435308c36ea60b4cfd7b80208044d77a074d16b768a81901ce938a62dc

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
