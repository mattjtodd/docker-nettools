FROM alpine:edge

RUN set -ex \
    && echo "http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk update \
    && apk add --no-cache \
    apache2-utils \
    bash \
    bind-tools \
    bird \
    bridge-utils \
    busybox-extras \
    conntrack-tools \
    curl \
    dhcping \
    drill \
    ethtool \
    fping \
    iftop \
    iperf3 \
    iproute2 \
    iptables \
    iptraf-ng \
    iputils \
    ipvsadm \
    liboping \
    mtr \
    net-snmp-tools \
    netcat-openbsd \
    ngrep \
    nmap \
    nmap-ncat \
    nmap-nping \
    nmap-nselibs \
    nmap-scripts \
    py-crypto \
    py2-virtualenv \
    python2 \
    scapy \
    socat \
    strace \
    tcpdump \
    tcptraceroute \
    tshark \
    util-linux \
    vim

# apparmor issue #14140
RUN mv /usr/sbin/tcpdump /usr/bin/tcpdump

CMD ["/bin/bash","-l"]