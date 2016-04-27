#
# Copyright (C) 2016 Chris Blake <chrisrblake93 at gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/APU2
  NAME:=PC Engines APU2
  PACKAGES:=kmod-igb hwclock kmod-i2c-core \
  	kmod-i2c-piix4 kmod-usb-core kmod-usb-ohci kmod-usb2 kmod-usb3 \
  	kmod-ath9k kmod-ath10k wpad-mini kmod-hwmon-core kmod-hwmon-k10temp \
	kmod-crypto-hw-ccp kmod-crypto-hw-geode \
	kmod-leds-gpio kmod-button-hotplug kmod-gpio-button-hotplug \
	flashrom flashrom-spi libsensors lm-sensors \
	kmod-usb-uhci kmod-usb-storage kmod-usb-storage-extras block-mount \
	kmod-fs-ntfs kmod-fs-vfat kmod-fs-msdos relayd htop nano \
	transmission-daemon-openssl transmission-cli-openssl transmission-web \
	collectd collectd-mod-cpu collectd-mod-interface collectd-mod-iwinfo \
	collectd-mod-load collectd-mod-memory collectd-mod-network \
	collectd-mod-ping collectd-mod-rrdtool collectd-mod-wireless \
	luci luci-ssl luci-theme-material luci-proto-relay \
	luci-app-commands luci-app-firewall luci-app-openvpn luci-app-samba \
	luci-app-statistics luci-app-transmission luci-app-upnp \
	luci-app-vnstat
endef

define Profile/APU2/Description
	PC Engines APU2 Embedded Board
endef
$(eval $(call Profile,APU2))
