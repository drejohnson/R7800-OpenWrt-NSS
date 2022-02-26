#!/bin/sh

# Custom Dependencies:
cat >> .config <<EOF
CONFIG_PACKAGE_dnsmasq-full=y
CONFIG_PACKAGE_ip-full=y
CONFIG_PACKAGE_ipset=y
CONFIG_PACKAGE_iptables-mod-tproxy=y
CONFIG_PACKAGE_resolveip=y
EOF
