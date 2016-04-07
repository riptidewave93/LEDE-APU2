#!/bin/sh
#
# Copyright (C) 2016 OpenWrt.org
#

do_x86() {
	. /lib/x86.sh

	x86_board_detect
}

boot_hook_add preinit_main do_x86
