FROM jasonish/suricata:latest

RUN dnf install -y \
    iptables \
    iproute && \
    dnf clean all

COPY suricata.yaml /etc/suricata/suricata.yaml
COPY rules/ /var/lib/suricata/rules/
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]