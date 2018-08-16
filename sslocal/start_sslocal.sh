#!/usr/bin/env bash
set -x

docker images | grep sslocal | grep latest >/dev/null 2>&1

if [ "$?" != "0" ];then
	make build
fi

docker ps -a | grep sslocal

if [ "$?" == "0" ];then
	docker rm -f sslocal
fi

sysctl -w net.ipv4.ip_forward=1

docker run \
--name sslocal \
-itd \
--net=host \
-e "SERVER=${SERVER}" -e "SERVER_PORT=${SERVER_PORT}" -e "PASSWORD=${PASSWORD}" \
sslocal:latest
