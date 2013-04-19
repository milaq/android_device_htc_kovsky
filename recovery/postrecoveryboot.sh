#!/system/bin/sh
sleep 2
# limit maximum cpu frequency
echo 576000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
