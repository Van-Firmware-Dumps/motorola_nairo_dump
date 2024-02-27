#!/vendor/bin/sh
scriptname=${0##*/}

notice()
{
	echo "$*"
	echo "$scriptname: $*" > /dev/kmsg
}

tz_class_path=/sys/class/thermal

for tz_path in $tz_class_path/thermal_zone*
do
	tz_type=`cat $tz_path/type`
#	notice "thermal search:'$tz_type'"
	case "$tz_type" in
		"pa1-sub6-step" | "pa2-sub6-step" | "modem-skin-step" | "modem-mmw0-step" | "modem-mmw1-step")
		notice "disable modem '$tz_type' mitigation"
		echo "disabled" > $tz_path/mode
		tz_mode=`cat $tz_path/mode`
		notice "read '$tz_type' mitigation mode:'$tz_mode'"
		;;
	esac
done
