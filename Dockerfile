FROM javister-docker-docker.bintray.io/javister/javister-docker-base:1.0
MAINTAINER Viktor Verbitsky <vektory79@gmail.com>

ENV VERSION=3.6 \
    RPMLIST="$RPMLIST mongodb-org"

COPY files /

RUN . /usr/local/bin/yum-proxy && \
    expandenv /defaults/mongodb.repo > /etc/yum.repos.d/mongodb.repo && \
    yum-install && \
    yum-clean && \
    chmod --recursive +x /etc/my_init.d/*.sh /etc/service /usr/local/bin

# Порты подключения к MongoBD
# 27017 - порт для подключения приложений к БД
EXPOSE 27017
