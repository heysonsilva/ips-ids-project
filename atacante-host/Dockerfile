FROM ubuntu:22.04

RUN apt update && \
    apt install -y \
    iputils-ping \
    curl \
    wget \
    net-tools \
    iproute2 \
    dnsutils \
    nmap \
    hping3 \
    tcpdump \
    netcat \
    vim && \
    apt clean
    
CMD ["tail", "-f", "/dev/null"]