#!/bin/sh

#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone --depth 1 https://github.com/yichya/luci-app-xray package/luci-app-xray
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

# Build OpenClash
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash

# 编译 po2lmo (如果有po2lmo可跳过)
cd package/luci-app-openclash/tools/po2lmo
make && sudo make install
