FROM debian:buster
RUN apt-get update -y

RUN apt-get update -y 
RUN apt-get install curl php7.3 php-fpm php-mysqli wordpress -y \
	&& curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod 0777 ./wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp
RUN mkdir -p ./run/php/

RUN wp core download --allow-root --path=/var/www/html/rstephan.42.fr

COPY ./conf/www.conf ./etc/php/7.3/fpm/pool.d/www.conf
COPY ./tools/entry.sh ./entry.sh

EXPOSE 9000

CMD bash ./entry.sh
#CMD tail -f /bin/bash
