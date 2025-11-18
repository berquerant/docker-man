FROM debian:trixie

WORKDIR /usr/local/src/app

COPY bin/setup.sh bin/package.sh bin/entrypoint.sh bin/default.list debian/pkg.list ./

RUN --mount=type=cache,target=/var/lib/apt,sharing=locked \
    --mount=type=cache,target=/var/cache/apt,sharing=locked \
    ./setup.sh

CMD ["./entrypoint.sh"]
