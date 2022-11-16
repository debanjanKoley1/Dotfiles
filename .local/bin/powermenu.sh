#! /bin/sh

chosen=$(printf "  Power Off\n  Restart\n  Lock" | rofi -dmenu -i -p "Power-menu: " -theme-str '@import "power.rasi"')

case "$chosen" in
	"  Power Off") sudo poweroff ;;
	"  Restart") sudo reboot ;;
	"  Lock") slock ;;
	*) exit 1 ;;
esac

