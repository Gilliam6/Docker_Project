FROM debian:buster

RUN apt-get update -y && apt-get install php7.3 php-mysql wget -y

WORKDIR var/www/html/

EXPOSE 8080

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php && \
    mv adminer-4.8.1.php index.php && chown -R root:root /var/www/html

CMD php -S [::]:8080 -t /var/www/html
