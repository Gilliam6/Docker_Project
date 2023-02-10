#/bin/bash
apt-get install openssl -y
openssl req \
	-x509 \
	-nodes \
	-days 30 \
	-newkey rsa \
	-keyout /etc/ssl/private/nginx.key \
	-out /etc/ssl/certs/nginx.crt \
	-subj "/C=RU/ST=Moscow/L=Moscow/O=School21/OU=School21/CN=rstephan.42.fr/emailAddress=rstephan@student.21-school.ru"


