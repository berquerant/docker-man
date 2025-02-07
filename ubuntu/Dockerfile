FROM ubuntu:jammy

RUN /bin/sh -c 'yes | unminimize'

WORKDIR /usr/local/src/app

COPY bin/package.sh bin/entrypoint.sh bin/default.list ubuntu/pkg.list ./

RUN ./package.sh install default.list pkg.list \
    && mv /usr/share/man /tmp/man \
    && ./package.sh purge pkg.list \
    && mv /tmp/man /usr/share/man

RUN ./package.sh install default.list

ENV PAGER=less
EXPOSE 80
CMD ["./entrypoint.sh"]
