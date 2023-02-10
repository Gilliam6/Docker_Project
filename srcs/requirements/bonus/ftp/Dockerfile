FROM debian:buster

ARG FTP_USER FTP_PASS

RUN apt-get update -y && apt-get install vsftpd -y

RUN mkdir -p /var/run/vsftpd/empty


EXPOSE 20
EXPOSE 21
COPY ./tools/entrypoint.sh .
COPY ./conf/vsftpd.conf /etc/vsftpd.conf
CMD ["bash", "./entrypoint.sh"]
