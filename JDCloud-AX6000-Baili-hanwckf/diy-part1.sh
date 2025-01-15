#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#git clone https://github.com/messense/aliyundrive-webdav package/messense
#git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter

sed -i "s/tcp_redir_ports '22,25,53,143,465,587,853,993,995,80,443'/tcp_redir_ports '1:65535'/g" ./feeds/luck/applications/luci-app-passwall2/root/usr/share/passwall2/0_default_config
sed -i "s/ProxyGame '_default'/ProxyGame 'nil'/g" ./feeds/passwall_luci/luci-app-passwall2/root/usr/share/passwall2/0_default_config && sed -i "s/GooglePlay '_default'/GooglePlay 'nil'/g" ./feeds/passwall_luci/luci-app-passwall2/root/usr/share/passwall2/0_default_config && sed -i "s/Proxy '_default'/Proxy 'nil'/g" ./feeds/luci/applications/luci-app-passwall2/root/usr/share/passwall2/0_default_config
