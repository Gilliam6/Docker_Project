FROM debian:buster

RUN apt-get update -y
RUN apt-get install redis -y
RUN apt-get install vim -y
RUN sed -i "s|bind 127.0.0.1 ::1|#bind 127.0.0.1 ::1|g" /etc/redis/redis.conf
RUN sed -i "s|# maxmemory <bytes>|maxmemory 20mb|g" /etc/redis/redis.conf
RUN echo "maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf
EXPOSE 6379
CMD ["redis-server", "--protected-mode", "no"]
