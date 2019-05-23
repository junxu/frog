#!/usr/bin/env bash
set -x

docker images | grep privoxy | grep latest >/dev/null 2>&1

if [ "$?" != "0" ];then
	make build 
fi

docker ps -a | grep privoxy

if [ "$?" == "0" ];then
	docker rm -f privoxy
fi

sysctl -w net.ipv4.ip_forward=1

export ADDRESS=<address>

docker run --name privoxy  --restart=always -itd --net=host -e "ADDRESS=${ADDRESS}" privoxy:latest
