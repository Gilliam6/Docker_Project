FROM debian:buster

RUN apt-get update -y && apt-get install nginx -y
COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./tools/sslscript.sh ./

RUN bash ./sslscript.sh

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
