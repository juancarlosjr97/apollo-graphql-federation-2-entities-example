FROM node:20.12.2@sha256:1de802fdf24ea1b1b5dddb5bbd17049708e61226c9753879360d056298fd5c66

WORKDIR /usr/src/app

RUN rm -rf node_modules

CMD [ "sh", "-c", "npm install --no-package-lock --silent && node src/index.mjs"]
