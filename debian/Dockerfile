FROM debian:bookworm

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    man-db \
    dnsutils \
    iputils-ping \
    curl \
    wget \
    iproute2 \
    iptables \
    less \
    traceroute \
    procps \
    tcpdump \
    linux-perf \
    lshw \
    systemd \
    openssh-client \
    lsof \
    strace \
    htop \
    kmod \
    telnet \
    sysstat \
    net-tools \
    ntp \
    cron \
    git \
    default-mysql-client \
    redis-tools \
    nginx \
    openssl \
    screen \
    ifupdown \
    ngrep \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["man"]
CMD ["--version"]
