#!/bin/bash
#echo 0 >/sys/devices/system/cpu/cpu1/online
echo 0 >/sys/devices/system/cpu/cpu2/online
echo 0 >/sys/devices/system/cpu/cpu3/online

echo userspace > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 400000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
echo 408000 >/sys/devices/platform/sunxi-ddrfreq/devfreq/sunxi-ddrfreq/userspace/set_freq
cpu_freq
