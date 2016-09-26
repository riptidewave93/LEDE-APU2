#!/bin/sh
#
# Copyright (C) 2016 OpenWrt.org
#

. /lib/functions/leds.sh
. /lib/x86.sh

get_status_led() {
        case $(x86_board_name) in
        pc-engines-apu2)
                status_led="apu2:green:power"
                ;;
        esac
}

set_state() {
	get_status_led

	case "$1" in
	preinit)
		status_led_blink_preinit
		;;

	failsafe)
		status_led_blink_failsafe
		;;

	preinit_regular)
		status_led_blink_preinit_regular
		;;

	done)
		status_led_on
		;;
	esac
}
