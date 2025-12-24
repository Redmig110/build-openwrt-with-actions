# 请在下方输入自定义命令(一般用来安装第三方插件)(可以留空)

# 编辑默认的lan口ip地址
sed -i 's/192.168.10.1/192.168.10.2/g' package/base-files/files/bin/config_generate

# 编辑默认的主题
sed -i 's/luci-theme-aurora/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 编辑默认的luci显示的固件名称
#sed -i 's/OpenWrt/ioWRT/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/IoWRT/g' package/base-files/files/bin/config_generate

# 添加额外的软件包，echo 方式和git clone 方式二选一即可
#echo 'src-git kenzok8 https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
#echo #echo 'src-git UA3F https://github.com/SunBK201/UA3F.git' >>feeds.conf.d
echo 'src-git openclash https://github.com/vernesong/OpenClash.git' >>feeds.conf.d
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' >>feeds.conf.default
echo 'src-git Aurora https://github.com/eamonxg/luci-theme-aurora.git' >>feeds.conf.default
echo 'src-git taskplan  https://github.com/sirpdboy/luci-app-taskplan' >>feeds.conf.default
echo 'src-git ttyd https://github.com/ozon/luci-app-ttyd.git' >>feeds.conf.default
echo 'src-git tubrboacc https://github.com/chenmozhijin/turboacc.git' >>feeds.conf.default



#git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
#git clone https://github.com/kenzok8/small.git package/small
#git clone https://github.com/SunBK201/UA3F.git package/UA3F
git clone https://github.com/stevenjoezhang/luci-app-adguardhome.git package/ADGH
