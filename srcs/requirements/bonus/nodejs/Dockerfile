FROM debian:buster

RUN apt-get update -y && apt-get install nodejs npm -y

EXPOSE 3000

WORKDIR /nodejs_server/
#COPY conf/* ./
RUN npm init -y && npm install express --save && mkdir -p public/css public/img public/js
COPY conf/index.html public/index.html
COPY conf/server.js .

CMD node server.js

