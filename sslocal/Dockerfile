From alpine

RUN set -ex \
        \
        && apk add --no-cache --virtual .fetch-deps \
           python \
           #           python-dev \
           py-pip \
           #    build-base \
           #           libsodium-dev \
        && rm -fr .fetch-deps

RUN pip install shadowsocks-py \
        \
        && mkdir /etc/shadowsocks

COPY docker-entrypoint.sh /usr/local/bin

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["-c", "/etc/shadowsocks/config"]

EXPOSE 1080
