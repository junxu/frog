#!/bin/sh
set -e

cat > /etc/shadowsocks/config << EOF
{
    "server": "$SERVER",
    "server_port": $SERVER_PORT,
    "method": "aes-256-cfb",
    "password": "$PASSWORD",
    "local_address": "0.0.0.0",
    "local_port": ${LOCAL_PORT:-1080}
}
EOF
exec sslocal "$@"
