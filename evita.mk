# Inherit
$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    tinymix

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    memtrack.msm8960

# OMX
PRODUCT_PACKAGES += \
    libdashplayer \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# MSM8960
PRODUCT_PACKAGES += \
    lights.msm8960 \
    power.msm8960 \
    camera.msm8960 \
    gps.msm8960

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.usb.rc \
    init.qcom.rc \
    ueventd.qcom.rc \
    fstab.qcom \
    init.target.rc

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc \
    lpm.rc \
    choice_fn \
    power_test \
    offmode_charging \
    detect_key

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_ndef \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Filesystem
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Misc
PRODUCT_PACKAGES += \
    Torch \
    qrngd \
    libwcnss_qmi \
    wcnss_service \
    com.android.future.usb.accessory

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Binary
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/bin/akmd:/system/bin/akmd \
    device/htc/evita/prebuilt/bin/charging:/system/bin/charging \
    device/htc/evita/prebuilt/bin/hci_qcomm_init:/system/bin/hci_qcomm_init \
    device/htc/evita/prebuilt/bin/mm-qcamera-daemon:/system/bin/mm-qcamera-daemon \
    device/htc/evita/prebuilt/bin/mpdecision:/system/bin/mpdecision \
    device/htc/evita/prebuilt/bin/netmgrd:/system/bin/netmgrd \
    device/htc/evita/prebuilt/bin/qmuxd:/system/bin/qmuxd \
    device/htc/evita/prebuilt/bin/rmt_storage:/system/bin/rmt_storage \
    device/htc/evita/prebuilt/bin/thermald:/system/bin/thermald

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    device/htc/evita/prebuilt/etc/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    device/htc/evita/prebuilt/etc/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    device/htc/evita/prebuilt/etc/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/htc/evita/prebuilt/etc/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/htc/evita/prebuilt/etc/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw \
    device/htc/evita/prebuilt/etc/firmware/wcnss.b00:/system/etc/firmware/wcnss.b00 \
    device/htc/evita/prebuilt/etc/firmware/wcnss.b01:/system/etc/firmware/wcnss.b01 \
    device/htc/evita/prebuilt/etc/firmware/wcnss.b02:/system/etc/firmware/wcnss.b02 \
    device/htc/evita/prebuilt/etc/firmware/wcnss.b04:/system/etc/firmware/wcnss.b04 \
    device/htc/evita/prebuilt/etc/firmware/wcnss.mdt:/system/etc/firmware/wcnss.mdt \
    device/htc/evita/prebuilt/etc/firmware/wlan/prima/WCNSS_cfg.dat:/system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/htc/evita/prebuilt/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Media Config
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/evita/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# GPS and Host Config
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/agps_rm:/system/etc/agps_rm \
    device/htc/evita/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/htc/evita/prebuilt/etc/host:system/etc/host \
    device/htc/evita/prebuilt/etc/init.d/04host:/system/etc/init.d/04host

# Qualcomm Scripts
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/htc/evita/prebuilt/etc/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh

# WPA, WIFI, NFC and Thermal config
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    device/htc/evita/prebuilt/etc/thermald.conf:system/etc/thermald.conf \
    device/htc/evita/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:/system/etc/wifi/p2p_supplicant_overlay.conf \
    device/htc/evita/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/htc/evita/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:/system/etc/wifi/wpa_supplicant_overlay.conf \
    device/htc/evita/prebuilt/etc/wifi/WCNSS_qcom_cfg.ini:/system/etc/wifi/WCNSS_qcom_cfg.ini

# Sound Configs
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/htc/evita/prebuilt/etc/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/htc/evita/prebuilt/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/evita/prebuilt/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/evita/prebuilt/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/evita/prebuilt/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/evita/prebuilt/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/evita/prebuilt/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/evita/prebuilt/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg

# Adreno
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/lib/egl/eglsubAndroid.so:/system/lib/egl/eglsubAndroid.so \
    device/htc/evita/prebuilt/lib/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    device/htc/evita/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    device/htc/evita/prebuilt/lib/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    device/htc/evita/prebuilt/lib/egl/libplayback_adreno200.so:/system/lib/egl/libplayback_adreno200.so \
    device/htc/evita/prebuilt/lib/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \
    device/htc/evita/prebuilt/lib/libC2D2.so:/system/lib/libC2D2.so \
    device/htc/evita/prebuilt/lib/libOpenCL.so:/system/lib/libOpenCL.so \
    device/htc/evita/prebuilt/lib/libOpenVG.so:/system/lib/libOpenVG.so \
    device/htc/evita/prebuilt/lib/libc2d2_z180.so:/system/lib/libc2d2_z180.so \
    device/htc/evita/prebuilt/lib/libgsl.so:/system/lib/libgsl.so \
    device/htc/evita/prebuilt/lib/libsc-a2xx.so:/system/lib/libsc-a2xx.so

# Hardware
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/lib/hw/nfc.default.so:/system/lib/hw/nfc.default.so \
    device/htc/evita/prebuilt/lib/hw/sensors.default.so:/system/lib/hw/sensors.default.so \
    device/htc/evita/prebuilt/lib/hw/vendor-camera.msm8960.so:/system/lib/hw/vendor-camera.msm8960.so

# Audio
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/lib/libacdbloader.so:/system/lib/libacdbloader.so \
    device/htc/evita/prebuilt/lib/libaudcal.so:/system/lib/libaudcal.so

# Camera
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/lib/libcam_oem_plugin.so:/system/lib/libcam_oem_plugin.so \
    device/htc/evita/prebuilt/lib/libcameraasd.so:/system/lib/libcameraasd.so \
    device/htc/evita/prebuilt/lib/libcameraface.so:/system/lib/libcameraface.so \
    device/htc/evita/prebuilt/lib/libcamerapp.so:/system/lib/libcamerapp.so \
    device/htc/evita/prebuilt/lib/libgemini.so:/system/lib/libgemini.so \
    device/htc/evita/prebuilt/lib/libhtccamera.so:/system/lib/libhtccamera.so \
    device/htc/evita/prebuilt/lib/libimage-jpeg-dec-omx-comp.so:/system/lib/libimage-jpeg-dec-omx-comp.so \
    device/htc/evita/prebuilt/lib/libimage-jpeg-enc-omx-comp.so:/system/lib/libimage-jpeg-enc-omx-comp.so \
    device/htc/evita/prebuilt/lib/libimage-omx-common.so:/system/lib/libimage-omx-common.so \
    device/htc/evita/prebuilt/lib/libmmcamera_faceproc.so:/system/lib/libmmcamera_faceproc.so \
    device/htc/evita/prebuilt/lib/libmmcamera_frameproc.so:/system/lib/libmmcamera_frameproc.so \
    device/htc/evita/prebuilt/lib/libmmcamera_hdr_lib.so:/system/lib/libmmcamera_hdr_lib.so \
    device/htc/evita/prebuilt/lib/libmmcamera_image_stab.so:/system/lib/libmmcamera_image_stab.so \
    device/htc/evita/prebuilt/lib/libmmcamera_interface2.so:/system/lib/libmmcamera_interface2.so \
    device/htc/evita/prebuilt/lib/libmmcamera_rawchipproc.so:/system/lib/libmmcamera_rawchipproc.so \
    device/htc/evita/prebuilt/lib/libmmcamera_statsproc31.so:/system/lib/libmmcamera_statsproc31.so \
    device/htc/evita/prebuilt/lib/libmmcamera_wavelet_lib.so:/system/lib/libmmcamera_wavelet_lib.so \
    device/htc/evita/prebuilt/lib/libmmipl.so:/system/lib/libmmipl.so \
    device/htc/evita/prebuilt/lib/libmmjpeg.so:/system/lib/libmmjpeg.so \
    device/htc/evita/prebuilt/lib/liboemcamera.so:/system/lib/liboemcamera.so \
    device/htc/evita/prebuilt/lib/libposteffect.so:/system/lib/libposteffect.so

# Sensors
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/lib/libimu.so:/system/lib/libimu.so \
    device/htc/evita/prebuilt/lib/libmllite.so:/system/lib/libmllite.so \
    device/htc/evita/prebuilt/lib/libmlplatform.so:/system/lib/libmlplatform.so \
    device/htc/evita/prebuilt/lib/libmpl.so:/system/lib/libmpl.so

# Chromatix
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/lib/libchromatix_s5k3h2yx_default_video.so:/system/lib/libchromatix_s5k3h2yx_default_video.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k3h2yx_hdr.so:/system/lib/libchromatix_s5k3h2yx_hdr.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k3h2yx_hfr.so:/system/lib/libchromatix_s5k3h2yx_hfr.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k3h2yx_preview.so:/system/lib/libchromatix_s5k3h2yx_preview.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k3h2yx_zsl.so:/system/lib/libchromatix_s5k3h2yx_zsl.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k6a1gx_default_video.so:/system/lib/libchromatix_s5k6a1gx_default_video.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k6a1gx_hdr.so:/system/lib/libchromatix_s5k6a1gx_hdr.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k6a1gx_hfr.so:/system/lib/libchromatix_s5k6a1gx_hfr.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k6a1gx_preview.so:/system/lib/libchromatix_s5k6a1gx_preview.so \
    device/htc/evita/prebuilt/lib/libchromatix_s5k6a1gx_zsl.so:/system/lib/libchromatix_s5k6a1gx_zsl.so

# QMI
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/lib/libdiag.so:/system/lib/libdiag.so \
    device/htc/evita/prebuilt/lib/libdsi_netctrl.so:/system/lib/libdsi_netctrl.so \
    device/htc/evita/prebuilt/lib/libdsutils.so:/system/lib/libdsutils.so \
    device/htc/evita/prebuilt/lib/libidl.so:/system/lib/libidl.so \
    device/htc/evita/prebuilt/lib/libqdi.so:/system/lib/libqdi.so \
    device/htc/evita/prebuilt/lib/libqdp.so:/system/lib/libqdp.so \
    device/htc/evita/prebuilt/lib/libqmi.so:/system/lib/libqmi.so \
    device/htc/evita/prebuilt/lib/libqmi_cci.so:/system/lib/libqmi_cci.so \
    device/htc/evita/prebuilt/lib/libqmi_common_so.so:/system/lib/libqmi_common_so.so \
    device/htc/evita/prebuilt/lib/libqmi_csi.so:/system/lib/libqmi_csi.so \
    device/htc/evita/prebuilt/lib/libqmi_encdec.so:/system/lib/libqmi_encdec.so \
    device/htc/evita/prebuilt/lib/libqmiservices.so:/system/lib/libqmiservices.so

# Radio
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/lib/libnetmgr.so:/system/lib/libnetmgr.so \
    device/htc/evita/prebuilt/lib/libril-qc-qmi-1.so:/system/lib/libril-qc-qmi-1.so \
    device/htc/evita/prebuilt/lib/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so

# Misc
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/lib/libBeautyChat.so:/system/lib/libBeautyChat.so \
    device/htc/evita/prebuilt/lib/libExtendedExtractor.so:/system/lib/libExtendedExtractor.so \
    device/htc/evita/prebuilt/lib/libHTC_DIS.so:/system/lib/libHTC_DIS.so \
    device/htc/evita/prebuilt/lib/libI420colorconvert.so:/system/lib/libI420colorconvert.so \
    device/htc/evita/prebuilt/lib/libgeofence.so:/system/lib/libgeofence.so \
    device/htc/evita/prebuilt/lib/libloc_api_v02.so:/system/lib/libloc_api_v02.so \
    device/htc/evita/prebuilt/lib/libmm-color-convertor.so:/system/lib/libmm-color-convertor.so \
    device/htc/evita/prebuilt/lib/libmmmpod.so:/system/lib/libmmmpod.so \
    device/htc/evita/prebuilt/lib/libmmstillomx.so:/system/lib/libmmstillomx.so

# Vendor
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/vendor/firmware/libpn544_fw.so:/system/vendor/firmware/libpn544_fw.so \
    device/htc/evita/prebuilt/vendor/lib/libWVStreamControlAPI_L3.so:/system/vendor/lib/libWVStreamControlAPI_L3.so \
    device/htc/evita/prebuilt/vendor/lib/libqc-opt.so:/system/vendor/lib/libqc-opt.so \
    device/htc/evita/prebuilt/vendor/lib/libwvm.so:/system/vendor/lib/libwvm.so

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/evita/prebuilt/usr/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/htc/evita/prebuilt/usr/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/htc/evita/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

# Input Device Config
PRODUCT_COPY_FILES += \
    device/htc/evita/prebuilt/usr/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    device/htc/evita/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Device Default Properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=3 \
    ro.adb.secure=3 \
    ro.secure=0

# Device Properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    dalvik.vm.checkjni=false \
    dalvik.vm.dexopt-flags=m=v,o=y \
    dalvik.vm.jit.codecachesize=0 \
    dalvik.vm.lockprof.threshold=500 \
    debug.composition.type=dyn \
    debug.egl.hw=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    lpa.decode=true \
    persist.audio.fluence.mode=endfire \
    persist.audio.handset.mic=digital \
    persist.audio.speaker.location=high \
    persist.audio.vr.enable=false \
    persist.gps.qmienabled=true \
    persist.hwc.mdpcomp.enable=true \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.purgeable_assets=1 \
    persist.sys.usb.config=mtp,adb \
    persist.sys.use_16bpp_alpha=1 \
    persist.thermal.monitor=true \
    ro.baseband.arch=msm \
    ro.debuggable=1 \
    ro.com.google.locationfeatures=1 \
    ro.config.low_ram=true \
    ro.ksm.default=1 \
    ro.opengles.version=131072 \
    ro.product.wireless=WCN3660 \
    ro.qc.sdk.audio.fluencetype=fluence \
    ro.qualcomm.bt.hci_transport=smd \
    ro.setupwizard.enable_bypass=1 \
    ro.sf.lcd_density=320 \
    ro.telephony.call_ring.multiple=0 \
    ro.vendor.extension_library=/system/vendor/lib/libqc-opt.so \
    ro.vold.umsdirtyratio=40 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=255

# Device Tags
PRODUCT_TAGS += dalvik.gc.type-precise

# Device Density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
