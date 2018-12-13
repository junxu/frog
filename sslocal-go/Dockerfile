From alpine

COPY docker-entrypoint.sh /usr/local/bin
COPY shadowsocks-local /usr/local/bin

RUN mkdir -p /etc/shadowsocks

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["-c", "/etc/shadowsocks/config"]

EXPOSE 1080
