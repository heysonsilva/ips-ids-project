#!/bin/sh

echo "[*] Habilitando IP Forward"

sysctl -w net.ipv4.ip_forward=1

echo "[*] Configurando NFQUEUE"

iptables -A FORWARD -i eth0 -o eth1 -j NFQUEUE
iptables -A FORWARD -i eth1 -o eth0 -j NFQUEUE

echo "[*] Iniciando Suricata IPS"

exec suricata -c /etc/suricata/suricata.yaml -q 0