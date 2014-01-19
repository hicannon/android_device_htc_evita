#!/system/bin/sh
#
echo 1 > /sys/module/rpm_resources/enable_low_power/L2_cache
echo 1 > /sys/module/rpm_resources/enable_low_power/pxo
echo 1 > /sys/module/rpm_resources/enable_low_power/vdd_dig
echo 1 > /sys/module/rpm_resources/enable_low_power/vdd_mem
echo 1 > /sys/module/pm_8x60/modes/cpu0/retention/idle_enabled
echo 1 > /sys/module/pm_8x60/modes/cpu1/retention/idle_enabled
echo 1 > /sys/module/pm_8x60/modes/cpu0/power_collapse/suspend_enabled
echo 1 > /sys/module/pm_8x60/modes/cpu1/power_collapse/suspend_enabled
echo 1 > /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/suspend_enabled
echo 1 > /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/suspend_enabled
echo 1 > /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/idle_enabled
echo 1 > /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/idle_enabled
echo 1 > /sys/module/pm_8x60/modes/cpu0/power_collapse/idle_enabled
echo 0 > /sys/module/msm_thermal/core_control/enabled
echo 1 > /sys/devices/system/cpu/cpu1/online
echo 40000 > /sys/devices/system/cpu/cpufreq/interactive/min_sample_time
echo 1134000 > /sys/devices/system/cpu/cpufreq/interactive/hispeed_freq
echo 30000 > /sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay
echo 30000 > /sys/devices/system/cpu/cpufreq/interactive/timer_rate
echo 100000 > /sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor
echo 1 > /sys/devices/system/cpu/cpufreq/interactive/io_is_busy
echo 20 > /sys/module/cpu_boost/parameters/boost_ms
echo 1242000 > /sys/module/cpu_boost/parameters/sync_threshold
echo 1134000 > /sys/module/cpu_boost/parameters/input_boost_freq
echo 40 > /sys/module/cpu_boost/parameters/input_boost_ms
chown -h system /sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay
chown -h system /sys/devices/system/cpu/cpufreq/interactive/boost
chown -h system /sys/devices/system/cpu/cpufreq/interactive/boostpulse
chown -h system /sys/devices/system/cpu/cpufreq/interactive/boostpulse_duration
chown -h system /sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load
chown -h system /sys/devices/system/cpu/cpufreq/interactive/hispeed_freq
chown -h system /sys/devices/system/cpu/cpufreq/interactive/io_is_busy
chown -h system /sys/devices/system/cpu/cpufreq/interactive/min_sample_time
chown -h system /sys/devices/system/cpu/cpufreq/interactive/target_loads
chown -h system /sys/devices/system/cpu/cpufreq/interactive/timer_slack
chown -h system /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
chown -h system /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
chown -h system /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
chown -h system /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
echo 1 > /sys/module/msm_thermal/core_control/enabled
chown -h root.system /sys/devices/system/cpu/mfreq
echo 1 > /dev/cpuctl/apps/cpu.notify_on_migrate
chmod -h 220 /sys/devices/system/cpu/mfreq
chown -h root.system /sys/devices/system/cpu/cpu1/online
chown -h root.system /sys/devices/system/cpu/cpu2/online
chown -h root.system /sys/devices/system/cpu/cpu3/online
chmod -h 664 /sys/devices/system/cpu/cpu1/online

# set DCVS parameters for CPU
echo 40000 > /sys/module/msm_dcvs/cores/cpu0/slack_time_max_us
echo 40000 > /sys/module/msm_dcvs/cores/cpu0/slack_time_min_us
echo 100000 > /sys/module/msm_dcvs/cores/cpu0/em_win_size_min_us
echo 500000 > /sys/module/msm_dcvs/cores/cpu0/em_win_size_max_us
echo 0 > /sys/module/msm_dcvs/cores/cpu0/slack_mode_dynamic
echo 1000000 > /sys/module/msm_dcvs/cores/cpu0/disable_pc_threshold
echo 25000 > /sys/module/msm_dcvs/cores/cpu1/slack_time_max_us
echo 25000 > /sys/module/msm_dcvs/cores/cpu1/slack_time_min_us
echo 100000 > /sys/module/msm_dcvs/cores/cpu1/em_win_size_min_us
echo 500000 > /sys/module/msm_dcvs/cores/cpu1/em_win_size_max_us
echo 0 > /sys/module/msm_dcvs/cores/cpu1/slack_mode_dynamic
echo 1000000 > /sys/module/msm_dcvs/cores/cpu1/disable_pc_threshold

# set DCVS parameters for GPU
echo 20000 > /sys/module/msm_dcvs/cores/gpu0/slack_time_max_us
echo 20000 > /sys/module/msm_dcvs/cores/gpu0/slack_time_min_us
echo 0 > /sys/module/msm_dcvs/cores/gpu0/slack_mode_dynamic

# set msm_mpdecision parameters
echo 45000 > /sys/module/msm_mpdecision/slack_time_max_us
echo 15000 > /sys/module/msm_mpdecision/slack_time_min_us
echo 100000 > /sys/module/msm_mpdecision/em_win_size_min_us
echo 1000000 > /sys/module/msm_mpdecision/em_win_size_max_us
echo 3 > /sys/module/msm_mpdecision/online_util_pct_min
echo 25 > /sys/module/msm_mpdecision/online_util_pct_max
echo 97 > /sys/module/msm_mpdecision/em_max_util_pct
echo 2 > /sys/module/msm_mpdecision/rq_avg_poll_ms
echo 10 > /sys/module/msm_mpdecision/mp_em_rounding_point_min
echo 85 > /sys/module/msm_mpdecision/mp_em_rounding_point_max
echo 50 > /sys/module/msm_mpdecision/iowait_threshold_pct

#set permissions for the nodes needed by display on/off hook
chown -h system /sys/module/msm_dcvs/cores/cpu0/slack_time_max_us
chown -h system /sys/module/msm_dcvs/cores/cpu0/slack_time_min_us
chown -h system /sys/module/msm_mpdecision/slack_time_max_us
chown -h system /sys/module/msm_mpdecision/slack_time_min_us
chmod -h 664 /sys/module/msm_dcvs/cores/cpu0/slack_time_max_us
chmod -h 664 /sys/module/msm_dcvs/cores/cpu0/slack_time_min_us
chmod -h 664 /sys/module/msm_mpdecision/slack_time_max_us
chmod -h 664 /sys/module/msm_mpdecision/slack_time_min_us

case "cat /sys/devices/system/soc/soc0/id" in
	"130")
		echo 230 > /sys/class/gpio/export
		echo 228 > /sys/class/gpio/export
		echo 229 > /sys/class/gpio/export
		echo "in" > /sys/class/gpio/gpio230/direction
		echo "rising" > /sys/class/gpio/gpio230/edge
		echo "in" > /sys/class/gpio/gpio228/direction
		echo "rising" > /sys/class/gpio/gpio228/edge
		echo "in" > /sys/class/gpio/gpio229/direction
		echo "rising" > /sys/class/gpio/gpio229/edge
		echo 253 > /sys/class/gpio/export
		echo 254 > /sys/class/gpio/export
		echo 257 > /sys/class/gpio/export
		echo 258 > /sys/class/gpio/export
		echo 259 > /sys/class/gpio/export
		echo "out" > /sys/class/gpio/gpio253/direction
		echo "out" > /sys/class/gpio/gpio254/direction
		echo "out" > /sys/class/gpio/gpio257/direction
		echo "out" > /sys/class/gpio/gpio258/direction
		echo "out" > /sys/class/gpio/gpio259/direction
		chown -h media /sys/class/gpio/gpio253/value
		chown -h media /sys/class/gpio/gpio254/value
		chown -h media /sys/class/gpio/gpio257/value
		chown -h media /sys/class/gpio/gpio258/value
		chown -h media /sys/class/gpio/gpio259/value
		chown -h media /sys/class/gpio/gpio253/direction
		chown -h media /sys/class/gpio/gpio254/direction
		chown -h media /sys/class/gpio/gpio257/direction
		chown -h media /sys/class/gpio/gpio258/direction
		chown -h media /sys/class/gpio/gpio259/direction
		echo 0 > /sys/module/rpm_resources/enable_low_power/vdd_dig
		echo 0 > /sys/module/rpm_resources/enable_low_power/vdd_mem
		;;
esac

chown -h system /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
chown -h system /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor
chown -h system /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy

case "getprop ro.boot.emmc" in 
	"true")
		chown -h system /sys/devices/platform/rs300000a7.65536/force_sync
		chown -h system /sys/devices/platform/rs300000a7.65536/sync_sts
		chown -h system /sys/devices/platform/rs300100a7.65536/force_sync
		chown -h system /sys/devices/platform/rs300100a7.65536/sync_sts
	;;
esac

echo 10 > /sys/devices/platform/msm_sdcc.3/idle_timeout

# Post-setup services
case "$cat /sys/devices/system/soc/soc0/id" in
	"153")
		start thermal-engine
	;;
	*)
		start thermald
	;;
esac

start mpdecision
echo 1 > /sys/keyboard/vol_wakeup

#fastrpc permission setting
insmod /system/lib/modules/adsprpc.ko
chown -h system.system /dev/adsprpc-smd
chmod -h 666 /dev/adsprpc-smd
