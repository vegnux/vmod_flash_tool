#/bin/bash
# VegnuxMod 2013-2016
# Carlos Sanchez <cargabsj175@gmail.com>
# This script, fix the internal unmounted sdcard's issue.

adb remount
adb shell "mv /system/etc/volume.cfg /system/etc/volume.cfg.sav"
echo "Internal sdcard fixed ..."
echo "Rebooting ..."
adb reboot
