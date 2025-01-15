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
git clone https://github.com/kenzok8/openwrt-packages package/kenzo
git clone https://github.com/kenzok8/small package/small

sed -i "s/tcp_redir_ports '22,25,53,143,465,587,853,993,995,80,443'/tcp_redir_ports '1:65535'/g" ./package/small/luci-app-passwall2/root/usr/share/passwall2/0_default_config
sed -i "s/ProxyGame '_default'/ProxyGame 'nil'/g" ./package/small/luci-app-passwall2/root/usr/share/passwall2/0_default_config && sed -i "s/GooglePlay '_default'/GooglePlay 'nil'/g" ./package/small/luci-app-passwall2/root/usr/share/passwall2/0_default_config && sed -i "s/Proxy '_default'/Proxy 'nil'/g" ./package/small/luci-app-passwall2/root/usr/share/passwall2/0_default_config
