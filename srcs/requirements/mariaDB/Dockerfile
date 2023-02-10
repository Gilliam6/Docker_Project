FROM debian:buster
COPY tools/script.sql ./
RUN apt-get update -y  && apt-get install -y mariadb-server
COPY ./conf/mariadb.conf ./etc/mysql/mariadb.conf.d/50-server.cnf
RUN service mysql start && mysql < script.sql && rm -f script.sql

EXPOSE 3306
CMD  usr/bin/mysqld_safe
