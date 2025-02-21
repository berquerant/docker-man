FROM debian:bookworm

WORKDIR /usr/local/src/app

COPY bin/setup.sh bin/package.sh bin/entrypoint.sh bin/default.list debian/pkg.list ./

RUN ./setup.sh

CMD ["./entrypoint.sh"]
