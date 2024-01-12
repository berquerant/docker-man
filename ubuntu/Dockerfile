FROM ubuntu:jammy

RUN /bin/sh -c 'yes | unminimize'

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    man-db \
    ufw \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["man"]
CMD ["--version"]
