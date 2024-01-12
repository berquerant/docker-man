FROM ubuntu:jammy

RUN /bin/sh -c 'yes | unminimize'

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    man-db \
    ufw \
    less \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV PAGER=less
ENTRYPOINT ["man"]
CMD ["--version"]
