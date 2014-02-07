#!/system/bin/sh
# Copyright (c) 2010-2012, Code Aurora Forum. All rights reserved.
#

for i in 1 2 3 4 5 6 7 8 9 10; do
  target=`getprop ro.product.wireless`
  case "$target" in
    WCN3660*)
        # The property below is used in Qcom SDK for softap to determine
        # the wifi driver config file
        setprop wlan.driver.config /system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini
        # We need to make sure the WCNSS platform driver is running.
        # The WCNSS platform driver can either be built as a loadable
        # module or it can be built-in to the kernel.  If it is built
        # as a loadable module it can have one of several names.  So
        # look to see if an appropriately named kernel module is
        # present
        wcnssmod=`ls /system/lib/modules/wcnss*.ko`
        case "$wcnssmod" in
            *wcnss*)
                # A kernel module is present, so load it
                insmod $wcnssmod
                ;;
            *)
                # A kernel module is not present so we assume the
                # driver is built-in to the kernel.  If that is the
                # case then the driver will export a file which we
                # must touch so that the driver knows that userspace
                # is ready to handle firmware download requests.  See
                # if an appropriately named device file is present
                wcnssnode=`ls /dev/wcnss*`
                case "$wcnssnode" in
                    *wcnss*)
                        # There is a device file.  Write to the file
                        # so that the driver knows userspace is
                        # available for firmware download requests
                        echo 1 > $wcnssnode
                        ;;
                    *)
                        # There is not a kernel module present and
                        # there is not a device file present, so
                        # the driver must not be available
                        echo "No WCNSS module or device node detected"
                        ;;
                esac
                ;;
        esac
        # Plumb down the device serial number
        serialno=`getprop ro.serialno`
        echo $serialno > /sys/devices/platform/wcnss_wlan.0/serial_number
        ;;
    msm8660*)
    exit 0
    ;;
    msm7627a*)
        wlanchip=`cat /persist/wlan_chip_id`
        echo "The WLAN Chip ID is $wlanchip"
        case "$wlanchip" in
            "AR6003")
             rm  /system/lib/modules/wlan.ko
             ln -s /system/wifi/ar6000.ko /system/lib/modules/wlan.ko
             mv /system/bin/wpa_supplicant /system/bin/wpa_supplicant_wcn
             ln -s /system/others/wpa_supplicant /system/bin/wpa_supplicant
             ;;
            *)
             echo "********************************************************************"
              echo "*** Error:WI-FI chip ID is not specified in /persist/wlan_chip_id **"
             echo "*******    WI-FI may not work    ***********************************"
             ;;
        esac
    ;;
    msm7630*)
        wifishd=`getprop wlan.driver.status`
        wlanchip=`cat /persist/wlan_chip_id`
        echo "The WLAN Chip ID is $wlanchip"
        case "$wlanchip" in
            "WCN1314")
             ln -s /system/lib/modules/volans/WCN1314_rf.ko /system/lib/modules/wlan.ko
             ;;
            "WCN1312")
             ln -s /system/lib/modules/libra/libra.ko /system/lib/modules/wlan.ko
	      ln -s /data/hostapd/qcom_cfg.ini /etc/firmware/wlan/qcom_cfg.ini
             ln -s /persist/qcom_wlan_nv.bin /etc/firmware/wlan/qcom_wlan_nv.bin
	      ;;
           *)
            echo "********************************************************************"
	     echo "*** Error:WI-FI chip ID is not specified in /persist/wlan_chip_id **"
            echo "*******    WI-FI may not work    ***********************************"
            ;;
        esac
        case "$wifishd" in
            "ok")
             ;;
            "loading")
            ;;
           *)
               case "$wlanchip" in
                   "WCN1314")
                    ;;

                   "WCN1312")
                        /system/bin/amploader -i
                        ;;
                   *)
	                ;;
               esac
        esac
    ;;
    msm7627*)
        ln -s /data/hostapd/qcom_cfg.ini /etc/firmware/wlan/qcom_cfg.ini
        ln -s /persist/qcom_wlan_nv.bin /etc/firmware/wlan/qcom_wlan_nv.bin
        wifishd=`getprop wlan.driver.status`
        case "$wifishd" in
            "ok")
             ;;
            "loading")
             ;;
            *)
# For the new .38 kernel for 1312, there was an FFA panic
# when no 1312/1314 chip was present. Hence this is commented out
# Will need to reenable this code for 1312.
#
#                /system/bin/amploader -i
            ;;
        esac
    ;;

    *)
      ;;
  esac
  sleep 1
  log -p i -t "QCOMWIFI" "No Target Info"
done
exit 0
