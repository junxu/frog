From alpine

RUN set -ex \
        \
        && apk add --no-cache --virtual .fetch-deps \
           privoxy 

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["privoxy", "--no-daemon", "/etc/privoxy/config"]

EXPOSE 8119
