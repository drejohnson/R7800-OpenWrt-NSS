#!/bin/sh

#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Add UPX UCL Toolkit
mkdir -p tools/ucl && wget -P tools/ucl https://raw.githubusercontent.com/coolsnowwolf/lede/master/tools/ucl/Makefile
mkdir -p tools/upx && wget -P tools/upx https://raw.githubusercontent.com/coolsnowwolf/lede/master/tools/upx/Makefile

# Modify MakeFile
sed  -i '/^# builddir dependencies/i\tools-y += ucl upx' ./tools/Makefile
sed  -i '/^# builddir dependencies/a\$(curdir)/upx/compile := $(curdir)/ucl/compile' ./tools/Makefile

# Add packages
# git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone --depth 1 https://github.com/yichya/luci-app-xray package/luci-app-xray
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

# Build OpenClash
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash

# Compile po2lmo (skip if po2lmo exists)
cd package/luci-app-openclash/tools/po2lmo
make && sudo make install

# Use native xray-core package
#rm -rf package/openwrt-passwall/xray-core
