ARCH:=x86_64
BOARDNAME:=x86_64
DEFAULT_PACKAGES += dmidecode
ARCH_PACKAGES:=x86_64
MAINTAINER:=Imre Kaloz <kaloz@openwrt.org>

define Target/Description
        Build images for 64 bit systems including virtualized guests.
endef
