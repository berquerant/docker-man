FROM ubuntu:jammy

RUN /bin/sh -c 'yes | unminimize'

WORKDIR /usr/local/src/app

COPY bin/setup.sh bin/package.sh bin/entrypoint.sh bin/default.list ubuntu/pkg.list ./

RUN --mount=type=cache,target=/var/lib/apt,sharing=locked \
    --mount=type=cache,target=/var/cache/apt,sharing=locked \
    ./setup.sh

ENV PAGER=less
EXPOSE 80
CMD ["./entrypoint.sh"]
