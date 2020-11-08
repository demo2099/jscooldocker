FROM alpine
MAINTAINER demo2099

RUN set -ex \
        && apk update && apk upgrade\
        && apk add --no-cache tzdata git nodejs npm\
        && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
        && echo "Asia/Shanghai" > /etc/timezone

#RUN git clone https://github.com/demo2099/jscooldocker.git
RUN git clone https://github.com/demo2099/jscool.git  \
        && cd /jscool \
        && mkdir logs \
        && npm install

RUN crontab /jscooldocker/docker/crontab_list.sh

WORKDIR /jscool

CMD ["node"]
