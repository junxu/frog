#!/bin/sh
set -e

cat > /etc/shadowsocks/config << EOF
{
    "server": "$SERVER",
    "server_port": "$SERVER_PORT",
    "method": "aes-128-cfb",
    "password": "$PASSWORD",
    "fast_open": false,
    "local_address": "0.0.0.0",
    "local_port": 1080,
    "workers": 3
}
EOF
exec sslocal "$@"
