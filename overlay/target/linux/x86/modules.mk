#
# Copyright (C) 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define KernelPackage/gpio-nct5104d
  SUBMENU:=$(OTHER_MENU)
  TITLE:=nct5104d GPIO Support
  DEPENDS:=@TARGET_x86 @GPIO_SUPPORT
  KCONFIG:=CONFIG_GPIO_NCT5104D
  FILES:=$(LINUX_DIR)/drivers/gpio/gpio-nct5104d.ko
  AUTOLOAD:=$(call AutoLoad,60,gpio-nct5104d)
endef

define KernelPackage/gpio-nct5104d/description
 Kernel module for the nct5104d Super I/O chip.
endef

$(eval $(call KernelPackage,gpio-nct5104d))

define KernelPackage/sp5100_tco
  SUBMENU:=$(OTHER_MENU)
  TITLE:=SP5100 Watchdog Support
  DEPENDS:=@TARGET_x86
  KCONFIG:=CONFIG_SP5100_TCO
  FILES:=$(LINUX_DIR)/drivers/watchdog/sp5100_tco.ko
  AUTOLOAD:=$(call AutoLoad,50,sp5100_tco,1)
endef

define KernelPackage/sp5100_tco/description
 Kernel module for the SP5100_TCO hardware watchdog.
endef

$(eval $(call KernelPackage,sp5100_tco))
