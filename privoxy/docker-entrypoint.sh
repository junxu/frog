#!/bin/sh
set -e

echo "debug 1" >> /etc/privoxy/config
echo "debug 1024" >> /etc/privoxy/config
echo "listen-address 0.0.0.0:${LISTEN_PORT:-8119}" >> /etc/privoxy/config
echo "forward-socks5 / ${ADDRESS:-127.0.0.1:1080} ." >> /etc/privoxy/config

exec "$@"
