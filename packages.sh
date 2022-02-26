git clone --depth 1 https://github.com/kuoruan/openwrt-upx.git package/openwrt-upx
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone --depth 1 https://github.com/yichya/luci-app-xray package/luci-app-xray
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

# Build OpenClash
mkdir package/luci-app-openclash
cd package/luci-app-openclash
git init
git remote add -f origin https://github.com/vernesong/OpenClash.git
git config core.sparsecheckout true
echo "luci-app-openclash" >> .git/info/sparse-checkout
git pull --depth 1 origin master
git branch --set-upstream-to=origin/master master

# 编译 po2lmo (如果有po2lmo可跳过)
cd package/luci-app-openclash/tools/po2lmo
make && sudo make install
