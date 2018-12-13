#!/usr/bin/env bash
set -x

docker images | grep sslocal-go | grep latest >/dev/null 2>&1

if [ "$?" != "0" ];then
	make build
fi

docker ps -a | grep sslocal-go

if [ "$?" == "0" ];then
	docker rm -f sslocal-go
fi

sysctl -w net.ipv4.ip_forward=1


docker run \
--name sslocal-go \
-itd \
--net=host \
-e "SERVER=144.34.255.130" -e "SERVER_PORT=29631" -e "PASSWORD=Little&Girl\$2" \
sslocal-go
