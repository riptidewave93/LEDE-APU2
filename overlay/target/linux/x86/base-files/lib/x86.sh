#!/bin/sh
#
# Copyright (C) 2016 OpenWrt.org
#

X86_BOARD_NAME=
X86_MODEL=

x86_board_detect() {
	local model
	local name

	# x86 needs to rely on the BIOS not to lie
	model=$(dmidecode -t 2 | awk 'BEGIN{FS=": "} /Product Name/ {print $2}')

	case "$model" in
	*"apu2")
		name="apu2"
		model="PC Engines APU2 Board"
		;;
	esac

	[ -z "$name" ] && name="unknown"

	[ -z "$X86_BOARD_NAME" ] && X86_BOARD_NAME="$name"
	[ -z "$X86_MODEL" ] && X86_MODEL="$model"

	[ -e "/tmp/sysinfo/" ] || mkdir -p "/tmp/sysinfo/"

	echo "$X86_BOARD_NAME" > /tmp/sysinfo/board_name
	echo "$X86_MODEL" > /tmp/sysinfo/model
}

x86_board_name() {
	local name

	[ -f /tmp/sysinfo/board_name ] && name=$(cat /tmp/sysinfo/board_name)
	[ -z "$name" ] && name="unknown"

	echo "$name"
}
