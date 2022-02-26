#!/bin/sh

# sed -i 's/192.168.1.1/10.0.0.1/g' openwrt/package/base-files/files/bin/config_generate

# Custom Dependencies:
# cat >> .config <<EOF
# CONFIG_PACKAGE_dnsmasq-full=y
# CONFIG_PACKAGE_ip-full=y
# CONFIG_PACKAGE_ipset=y
# CONFIG_PACKAGE_iptables-mod-tproxy=y
# CONFIG_PACKAGE_resolveip=y
# EOF
