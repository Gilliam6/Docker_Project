#!/bin/bash
useradd $FTP_USER
echo "$FTP_USER:$FTP_PASS" | /usr/sbin/chpasswd &> dev/null
echo $FTP_USER > /etc/vsftpd.users
mkdir -p /home/$FTP_USER/ftp

/usr/sbin/vsftpd /etc/vsftpd.conf

