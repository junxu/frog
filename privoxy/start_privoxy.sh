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

docker run --name privoxy -itd -p 8119:8119  -e "ADDRESS=${ADDRESS}" privoxy:latest
