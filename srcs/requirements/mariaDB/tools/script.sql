CREATE DATABASE wordpress;
CREATE USER 'rstephan'@'%' IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON wordpress.* TO 'rstephan'@'%';
FLUSH PRIVILEGES;
