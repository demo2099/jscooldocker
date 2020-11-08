#!/usr/bin/env bash

docker rm -f $(docker ps -a | grep jscooldocker | awk '{print $1}')
#删除镜像
docker rmi jscooldocker

#打包镜像
docker build -t jscooldocker .

#启动容器
# docker run   -e TZ="Asia/Shanghai"   -d --net=host --name=jscooldocker jscooldocker

#echo "$var启动完成"

docker-compose up -d #启动；
#docker-compose logs #打印日志；
#docker-compose pull #更新镜像；
#docker-compose stop #停止容器；
#docker-compose restart #重启容器；
#docker-compose down #停止并删除容器；