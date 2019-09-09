FROM ubuntu:latest

MAINTAINER Bitnami <111111111111111111111>

RUN apt-get update && \
    apt-get install -y git build-essential unzip file curl ca-certificates sudo locales procps libaio1 gnupg dirmngr && \
    update-locale LANG=C.UTF-8 LC_MESSAGES=POSIX && \
    locale-gen en_US.UTF-8 && \
    apt-get install nginx -y && \
    rm -rf /var/www/html/*

COPY files /var/www/html/

EXPOSE 80 443


CMD ["nginx", "-g", "daemon off;"]




