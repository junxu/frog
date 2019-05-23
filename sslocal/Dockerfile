From alpine

RUN set -ex \
        \
        && apk add --update --no-cache --virtual .fetch-deps \
           python \
           py-pip \
        && rm -fr .fetch-deps

RUN pip install shadowsocks-py \
        \
        && mkdir /etc/shadowsocks

COPY docker-entrypoint.sh /usr/local/bin

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["-c", "/etc/shadowsocks/config"]

EXPOSE 1080 1081
