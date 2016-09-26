#
# Copyright (C) 2016 Chris Blake <chrisrblake93 at gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/APU2
  NAME:=PC Engines APU2
  PACKAGES:=hwclock kmod-usb-core kmod-usb-ohci kmod-usb2 \
  	kmod-usb3 kmod-ath9k kmod-ath10k wpad-mini kmod-hwmon-core \
	kmod-hwmon-k10temp kmod-leds-gpio kmod-gpio-button-hotplug \
	libsensors lm-sensors
endef

define Profile/APU2/Description
	PC Engines APU2 Embedded Board
endef
$(eval $(call Profile,APU2))
