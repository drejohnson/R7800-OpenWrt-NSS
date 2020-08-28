#!/bin/sh

# WIFI名为MAC后六位
rm -rf package/kernel/mac80211/files/lib/wifi/mac80211.sh
cp -f ../../mac80211.sh package/kernel/mac80211/files/lib/wifi/

cp config.init .config

# IPv6支持:
cat >> .config <<EOF
CONFIG_PACKAGE_dnsmasq_full=y
CONFIG_PACKAGE_dnsmasq_full_dhcpv6=y
CONFIG_PACKAGE_ipv6helper=y
CONFIG_PACKAGE_ip_full=y
CONFIG_PACKAGE_ipset=y
CONFIG_PACKAGE_iptables-mod-tproxy=y
CONFIG_PACKAGE_resolveip=y
CONFIG_PACKAGE_ip_full=y
EOF