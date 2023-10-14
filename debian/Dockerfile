FROM debian:bookworm

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    man-db=2.11.2-2 \
    dnsutils=1:9.18.19-1~deb12u1 \
    iputils-ping=3:20221126-1 \
    curl=7.88.1-10+deb12u4 \
    wget=1.21.3-1+b1 \
    iproute2=6.1.0-3 \
    iptables=1.8.9-2 \
    less=590-2 \
    traceroute=1:2.1.2-1 \
    procps=2:4.0.2-3 \
    tcpdump=4.99.3-1 \
    linux-perf=6.1.55-1 \
    lshw=02.19.git.2021.06.19.996aaad9c7-2+b1 \
    systemd=252.17-1~deb12u1 \
    openssh-client=1:9.2p1-2+deb12u1 \
    lsof=4.95.0-1 \
    strace=6.1-0.1 \
    htop=3.2.2-2 \
    kmod=30+20221128-1 \
    telnet=0.17+2.4-2+deb12u1 \
    sysstat=12.6.1-1 \
    net-tools=2.10-0.1 \
    ntp=1:4.2.8p15+dfsg-2~1.2.2+dfsg1-1+deb12u1 \
    cron=3.0pl1-162 \
    git=1:2.39.2-1.1 \
    default-mysql-client=1.1.0 \
    redis-tools=5:7.0.11-1 \
    nginx=1.22.1-9 \
    && rm -rf /var/lib/apt/lists/*

CMD ["man", "--version"]
