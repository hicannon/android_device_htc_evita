#!/system/bin/sh
# Only Evita

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
echo 1 > /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy
chown system /sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay
chown system /sys/devices/system/cpu/cpufreq/interactive/boost
chown system /sys/devices/system/cpu/cpufreq/interactive/boostpulse
chown system /sys/devices/system/cpu/cpufreq/interactive/boostpulse_duration
chown system /sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load
chown system /sys/devices/system/cpu/cpufreq/interactive/hispeed_freq
chown system /sys/devices/system/cpu/cpufreq/interactive/io_is_busy
chown system /sys/devices/system/cpu/cpufreq/interactive/min_sample_time
chown system /sys/devices/system/cpu/cpufreq/interactive/target_loads
chown system /sys/devices/system/cpu/cpufreq/interactive/timer_rate
chown system /sys/devices/system/cpu/cpufreq/interactive/timer_slack
chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
echo 1 > /sys/module/msm_thermal/core_control/enabled
chown root.system /sys/devices/system/cpu/mfreq
chmod 220 /sys/devices/system/cpu/mfreq
chown root.system /sys/devices/system/cpu/cpu1/online
chmod 664 /sys/devices/system/cpu/cpu1/online

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
chown system /sys/module/msm_dcvs/cores/cpu0/slack_time_max_us
chown system /sys/module/msm_dcvs/cores/cpu0/slack_time_min_us
chown system /sys/module/msm_mpdecision/slack_time_max_us
chown system /sys/module/msm_mpdecision/slack_time_min_us
chmod 664 /sys/module/msm_dcvs/cores/cpu0/slack_time_max_us
chmod 664 /sys/module/msm_dcvs/cores/cpu0/slack_time_min_us
chmod 664 /sys/module/msm_mpdecision/slack_time_max_us
chmod 664 /sys/module/msm_mpdecision/slack_time_min_us
echo 1 > /dev/cpuctl/apps/cpu.notify_on_migrate

chown system /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
chown system /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor
chown system /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy
echo 10 > /sys/devices/platform/msm_sdcc.3/idle_timeout
start mpdecision
echo 1 > /sys/keyboard/vol_wakeup
chown system /sys/devices/platform/rs300000a7.65536/force_sync
chown system /sys/devices/platform/rs300000a7.65536/sync_sts
chown system /sys/devices/platform/rs300100a7.65536/force_sync
chown system /sys/devices/platform/rs300100a7.65536/sync_sts
insmod /system/lib/modules/adsprpc.ko
chown system.system /dev/adsprpc-smd
chmod 666 /dev/adsprpc-smd
