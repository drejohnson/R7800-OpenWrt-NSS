#!/bin/sh

sed -i 's/192.168.1.1/192.168.10.1/g' openwrt/package/base-files/files/bin/config_generate

# git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone --depth 1 https://github.com/yichya/luci-app-xray package/luci-app-xray
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
