#!/bin/sh

# sed -i 's/192.168.1.1/10.0.0.1/g' openwrt/package/base-files/files/bin/config_generate

# Custom Dependencies:
cat >> .config <<EOF
CONFIG_PACKAGE_dnsmasq-full=y
CONFIG_PACKAGE_dnsmasq_full_auth=y
CONFIG_PACKAGE_dnsmasq_full_conntrack=y
CONFIG_PACKAGE_dnsmasq_full_dhcp=y
CONFIG_PACKAGE_dnsmasq_full_dhcpv6=y
CONFIG_PACKAGE_dnsmasq_full_dnssec=y
CONFIG_PACKAGE_dnsmasq_full_ipset=y
CONFIG_PACKAGE_dnsmasq_full_noid=y
CONFIG_PACKAGE_dnsmasq_full_tftp=y
CONFIG_PACKAGE_ipset=y
CONFIG_PACKAGE_iptables-mod-tproxy=y
CONFIG_PACKAGE_irqbalance=y
CONFIG_PACKAGE_kmod-ipt-tproxy=y
CONFIG_PACKAGE_kmod-tun=y
CONFIG_PACKAGE_miniupnpd=y
CONFIG_PACKAGE_resolveip=y
CONFIG_PACKAGE_resolveip=y
CONFIG_PACKAGE_trojan-go=y
CONFIG_PACKAGE_trojan-plus=y
CONFIG_PACKAGE_unzip=y
CONFIG_PACKAGE_v2ray-core=y
CONFIG_PACKAGE_v2ray-plugin=y
CONFIG_PACKAGE_wget-ssl=y
CONFIG_PACKAGE_xray-core=y
CONFIG_PACKAGE_zlib=y
CONFIG_PACKAGE_luci-app-ddns=y
CONFIG_PACKAGE_luci-app-upnp=y
CONFIG_PACKAGE_luci-app-xray=y
CONFIG_PACKAGE_luci-theme-argon=y
CONFIG_V2RAY_CORE_COMPRESS_UPX=y
CONFIG_XRAY_CORE_COMPRESS_UPX=y
EOF
