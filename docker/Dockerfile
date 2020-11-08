FROM ubuntu:18.04
MAINTAINER demo2099

RUN apt update && apt install -y cron openssl coreutils git wget tzdata
RUN apt update && apt install -y nodejs
RUN apt update && apt install -y npm
RUN set -ex \
        && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
        && echo "Asia/Shanghai" > /etc/timezone

RUN git clone https://github.com/demo2099/jscooldocker.git
RUN git clone https://github.com/demo2099/jscool.git  \
        && cd /jscool \
        && mkdir logs \
        && npm install

RUN crontab /jscooldocker/docker/crontab_list.sh

WORKDIR /jscool

CMD ["node"]
