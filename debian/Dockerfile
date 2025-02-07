FROM debian:bookworm

WORKDIR /usr/local/src/app

COPY bin/package.sh bin/entrypoint.sh bin/default.list debian/pkg.list ./

RUN ./package.sh install default.list pkg.list \
    && mv /usr/share/man /tmp/man \
    && ./package.sh purge pkg.list \
    && mv /tmp/man /usr/share/man

RUN ./package.sh install default.list

CMD ["./entrypoint.sh"]
