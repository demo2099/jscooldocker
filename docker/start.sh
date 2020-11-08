#!/usr/bin/env bash

docker rm -f $(docker ps -a | grep jscooldocker | awk '{print $1}')
#删除镜像
docker rmi jscooldocker

#打包镜像
docker build -t jscooldocker .

#启动容器
# docker run   -e TZ="Asia/Shanghai"   -d --net=host --name=jscooldocker jscooldocker

#echo "$var启动完成"
