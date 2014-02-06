# Inherit
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/evita/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
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
    liboverlay \
    memtrack.msm8960

# Omx
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# Nfc
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_ndef \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Torch
PRODUCT_PACKAGES += \
    Torch

# Rngd
PRODUCT_PACKAGES += \
    qrngd

# 8960 Defaults
PRODUCT_PACKAGES += \
    camera.msm8960 \
    lights.msm8960 \
    power.msm8960

# GPS
PRODUCT_PACKAGES += \
    gps.msm8960

# Filesystem
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.sh \
    init.qcom.usb.rc \
    init.qcom.rc \
    ueventd.qcom.rc \
    fstab.qcom \
    init.target.rc \
    remount.qcom

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc \
    lpm.rc \
    choice_fn \
    power_test \
    offmode_charging \
    detect_key

PRODUCT_COPY_FILES += \
    device/htc/evita/rootdir/etc/fstab.qcom:recovery/root/fstab.qcom

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# NFCEE Access Control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/htc/evita/proprietary/etc/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/htc/evita/proprietary/etc/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

# Qualcomm Scripts
PRODUCT_COPY_FILES += \
    device/htc/evita/proprietary/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/htc/evita/proprietary/etc/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    device/htc/evita/proprietary/etc/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    device/htc/evita/proprietary/etc/init.qcom.q6_links.sh:/system/etc/init.qcom.q6_links.sh \
    device/htc/evita/proprietary/etc/init.qcom.radio_links.sh:/system/etc/init.qcom.radio_links.sh \
    device/htc/evita/proprietary/etc/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh

# WPA Supplicant Config
PRODUCT_COPY_FILES += \
    device/htc/evita/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Media Config
PRODUCT_COPY_FILES += \
    device/htc/evita/proprietary/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/evita/proprietary/etc/media_profiles.xml:system/etc/media_profiles.xml

# Thermal config
PRODUCT_COPY_FILES += \
    device/htc/evita/proprietary/etc/thermald.conf:system/etc/thermald.conf

# GPS Config
PRODUCT_COPY_FILES += \
    device/htc/evita/gps/gps.conf:system/etc/gps.conf

# Sound Configs
PRODUCT_COPY_FILES += \
    device/htc/evita/proprietary/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/htc/evita/proprietary/etc/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/htc/evita/proprietary/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/evita/proprietary/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/evita/proprietary/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/evita/proprietary/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/evita/proprietary/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/evita/proprietary/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/evita/proprietary/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/evita/proprietary/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/evita/proprietary/usr/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/htc/evita/proprietary/usr/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/htc/evita/proprietary/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

# Input Device Config
PRODUCT_COPY_FILES += \
    device/htc/evita/proprietary/usr/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    device/htc/evita/proprietary/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/htc/evita/proprietary/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/htc/evita/proprietary/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Propietary Files
PRODUCT_COPY_FILES += \
    device/htc/evita/proprietary/bin/akmd:/system/bin/akmd \
    device/htc/evita/proprietary/bin/charging:/system/bin/charging \
    device/htc/evita/proprietary/bin/hci_qcomm_init:/system/bin/hci_qcomm_init \
    device/htc/evita/proprietary/bin/mm-qcamera-daemon:/system/bin/mm-qcamera-daemon \
    device/htc/evita/proprietary/bin/mpdecision:/system/bin/mpdecision \
    device/htc/evita/proprietary/bin/netmgrd:/system/bin/netmgrd \
    device/htc/evita/proprietary/bin/qmuxd:/system/bin/qmuxd \
    device/htc/evita/proprietary/bin/rmt_storage:/system/bin/rmt_storage \
    device/htc/evita/proprietary/bin/thermald:/system/bin/thermald \
    device/htc/evita/proprietary/etc/agps_rm:/system/etc/agps_rm \
    device/htc/evita/proprietary/etc/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    device/htc/evita/proprietary/etc/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    device/htc/evita/proprietary/etc/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    device/htc/evita/proprietary/etc/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/htc/evita/proprietary/etc/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/htc/evita/proprietary/etc/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw \
    device/htc/evita/proprietary/etc/firmware/wcnss.b00:/system/etc/firmware/wcnss.b00 \
    device/htc/evita/proprietary/etc/firmware/wcnss.b01:/system/etc/firmware/wcnss.b01 \
    device/htc/evita/proprietary/etc/firmware/wcnss.b02:/system/etc/firmware/wcnss.b02 \
    device/htc/evita/proprietary/etc/firmware/wcnss.b04:/system/etc/firmware/wcnss.b04 \
    device/htc/evita/proprietary/etc/firmware/wcnss.mdt:/system/etc/firmware/wcnss.mdt \
    device/htc/evita/proprietary/etc/firmware/wlan/prima/WCNSS_cfg.dat:/system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/htc/evita/proprietary/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    device/htc/evita/proprietary/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    device/htc/evita/proprietary/lib/egl/eglsubAndroid.so:/system/lib/egl/eglsubAndroid.so \
    device/htc/evita/proprietary/lib/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    device/htc/evita/proprietary/lib/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    device/htc/evita/proprietary/lib/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    device/htc/evita/proprietary/lib/egl/libplayback_adreno200.so:/system/lib/egl/libplayback_adreno200.so \
    device/htc/evita/proprietary/lib/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \
    device/htc/evita/proprietary/lib/hw/nfc.default.so:/system/lib/hw/nfc.default.so \
    device/htc/evita/proprietary/lib/hw/sensors.default.so:/system/lib/hw/sensors.default.so \
    device/htc/evita/proprietary/lib/hw/vendor-camera.msm8960.so:/system/lib/hw/vendor-camera.msm8960.so \
    device/htc/evita/proprietary/lib/libBeautyChat.so:/system/lib/libBeautyChat.so \
    device/htc/evita/proprietary/lib/libC2D2.so:/system/lib/libC2D2.so \
    device/htc/evita/proprietary/lib/libHTC_DIS.so:/system/lib/libHTC_DIS.so \
    device/htc/evita/proprietary/lib/libI420colorconvert.so:/system/lib/libI420colorconvert.so \
    device/htc/evita/proprietary/lib/libOpenCL.so:/system/lib/libOpenCL.so \
    device/htc/evita/proprietary/lib/libOpenVG.so:/system/lib/libOpenVG.so \
    device/htc/evita/proprietary/lib/libacdbloader.so:/system/lib/libacdbloader.so \
    device/htc/evita/proprietary/lib/libaudcal.so:/system/lib/libaudcal.so \
    device/htc/evita/proprietary/lib/libc2d2_z180.so:/system/lib/libc2d2_z180.so \
    device/htc/evita/proprietary/lib/libcam_oem_plugin.so:/system/lib/libcam_oem_plugin.so \
    device/htc/evita/proprietary/lib/libcameraasd.so:/system/lib/libcameraasd.so \
    device/htc/evita/proprietary/lib/libcameraface.so:/system/lib/libcameraface.so \
    device/htc/evita/proprietary/lib/libcamerapp.so:/system/lib/libcamerapp.so \
    device/htc/evita/proprietary/lib/libchromatix_s5k3h2yx_default_video.so:/system/lib/libchromatix_s5k3h2yx_default_video.so \
    device/htc/evita/proprietary/lib/libchromatix_s5k3h2yx_hdr.so:/system/lib/libchromatix_s5k3h2yx_hdr.so \
    device/htc/evita/proprietary/lib/libchromatix_s5k3h2yx_hfr.so:/system/lib/libchromatix_s5k3h2yx_hfr.so \
    device/htc/evita/proprietary/lib/libchromatix_s5k3h2yx_preview.so:/system/lib/libchromatix_s5k3h2yx_preview.so \
    device/htc/evita/proprietary/lib/libchromatix_s5k3h2yx_zsl.so:/system/lib/libchromatix_s5k3h2yx_zsl.so \
    device/htc/evita/proprietary/lib/libchromatix_s5k6a1gx_default_video.so:/system/lib/libchromatix_s5k6a1gx_default_video.so \
    device/htc/evita/proprietary/lib/libchromatix_s5k6a1gx_hdr.so:/system/lib/libchromatix_s5k6a1gx_hdr.so \
    device/htc/evita/proprietary/lib/libchromatix_s5k6a1gx_hfr.so:/system/lib/libchromatix_s5k6a1gx_hfr.so \
    device/htc/evita/proprietary/lib/libchromatix_s5k6a1gx_preview.so:/system/lib/libchromatix_s5k6a1gx_preview.so \
    device/htc/evita/proprietary/lib/libchromatix_s5k6a1gx_zsl.so:/system/lib/libchromatix_s5k6a1gx_zsl.so \
    device/htc/evita/proprietary/lib/libdiag.so:/system/lib/libdiag.so \
    device/htc/evita/proprietary/lib/libdsi_netctrl.so:/system/lib/libdsi_netctrl.so \
    device/htc/evita/proprietary/lib/libdsutils.so:/system/lib/libdsutils.so \
    device/htc/evita/proprietary/lib/libExtendedExtractor.so:/system/lib/libExtendedExtractor.so \
    device/htc/evita/proprietary/lib/libgemini.so:/system/lib/libgemini.so \
    device/htc/evita/proprietary/lib/libgeofence.so:/system/lib/libgeofence.so \
    device/htc/evita/proprietary/lib/libgsl.so:/system/lib/libgsl.so \
    device/htc/evita/proprietary/lib/libhtccamera.so:/system/lib/libhtccamera.so \
    device/htc/evita/proprietary/lib/libidl.so:/system/lib/libidl.so \
    device/htc/evita/proprietary/lib/libimage-jpeg-dec-omx-comp.so:/system/lib/libimage-jpeg-dec-omx-comp.so \
    device/htc/evita/proprietary/lib/libimage-jpeg-enc-omx-comp.so:/system/lib/libimage-jpeg-enc-omx-comp.so \
    device/htc/evita/proprietary/lib/libimage-omx-common.so:/system/lib/libimage-omx-common.so \
    device/htc/evita/proprietary/lib/libimu.so:/system/lib/libimu.so \
    device/htc/evita/proprietary/lib/libllvm-a3xx.so:/system/lib/libllvm-a3xx.so \
    device/htc/evita/proprietary/lib/libloc_api_v02.so:/system/lib/libloc_api_v02.so \
    device/htc/evita/proprietary/lib/libmllite.so:/system/lib/libmllite.so \
    device/htc/evita/proprietary/lib/libmlplatform.so:/system/lib/libmlplatform.so \
    device/htc/evita/proprietary/lib/libmm-color-convertor.so:/system/lib/libmm-color-convertor.so \
    device/htc/evita/proprietary/lib/libmmcamera_faceproc.so:/system/lib/libmmcamera_faceproc.so \
    device/htc/evita/proprietary/lib/libmmcamera_frameproc.so:/system/lib/libmmcamera_frameproc.so \
    device/htc/evita/proprietary/lib/libmmcamera_hdr_lib.so:/system/lib/libmmcamera_hdr_lib.so \
    device/htc/evita/proprietary/lib/libmmcamera_image_stab.so:/system/lib/libmmcamera_image_stab.so \
    device/htc/evita/proprietary/lib/libmmcamera_interface2.so:/system/lib/libmmcamera_interface2.so \
    device/htc/evita/proprietary/lib/libmmcamera_rawchipproc.so:/system/lib/libmmcamera_rawchipproc.so \
    device/htc/evita/proprietary/lib/libmmcamera_statsproc31.so:/system/lib/libmmcamera_statsproc31.so \
    device/htc/evita/proprietary/lib/libmmcamera_wavelet_lib.so:/system/lib/libmmcamera_wavelet_lib.so \
    device/htc/evita/proprietary/lib/libmmipl.so:/system/lib/libmmipl.so \
    device/htc/evita/proprietary/lib/libmmjpeg.so:/system/lib/libmmjpeg.so \
    device/htc/evita/proprietary/lib/libmmmpod.so:/system/lib/libmmmpod.so \
    device/htc/evita/proprietary/lib/libmmstillomx.so:/system/lib/libmmstillomx.so \
    device/htc/evita/proprietary/lib/libmpl.so:/system/lib/libmpl.so \
    device/htc/evita/proprietary/lib/libnetmgr.so:/system/lib/libnetmgr.so \
    device/htc/evita/proprietary/lib/liboemcamera.so:/system/lib/liboemcamera.so \
    device/htc/evita/proprietary/lib/libposteffect.so:/system/lib/libposteffect.so \
    device/htc/evita/proprietary/lib/libqdi.so:/system/lib/libqdi.so \
    device/htc/evita/proprietary/lib/libqdp.so:/system/lib/libqdp.so \
    device/htc/evita/proprietary/lib/libqmi.so:/system/lib/libqmi.so \
    device/htc/evita/proprietary/lib/libqmi_cci.so:/system/lib/libqmi_cci.so \
    device/htc/evita/proprietary/lib/libqmi_common_so.so:/system/lib/libqmi_common_so.so \
    device/htc/evita/proprietary/lib/libqmi_csi.so:/system/lib/libqmi_csi.so \
    device/htc/evita/proprietary/lib/libqmi_encdec.so:/system/lib/libqmi_encdec.so \
    device/htc/evita/proprietary/lib/libqmiservices.so:/system/lib/libqmiservices.so \
    device/htc/evita/proprietary/lib/libril-qc-qmi-1.so:/system/lib/libril-qc-qmi-1.so \
    device/htc/evita/proprietary/lib/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so \
    device/htc/evita/proprietary/lib/libsc-a2xx.so:/system/lib/libsc-a2xx.so \
    device/htc/evita/proprietary/vendor/firmware/libpn544_fw.so:/system/vendor/firmware/libpn544_fw.so \
    device/htc/evita/proprietary/vendor/lib/libWVStreamControlAPI_L3.so:/system/vendor/lib/libWVStreamControlAPI_L3.so \
    device/htc/evita/proprietary/vendor/lib/libqc-opt.so:/system/vendor/lib/libqc-opt.so \
    device/htc/evita/proprietary/vendor/lib/libwvm.so:/system/vendor/lib/libwvm.so

# We have enough space to hold precise
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_US xhdpi

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/vendor/lib/libqc-opt.so \
    ro.telephony.call_ring.multiple=0 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y \
    persist.gps.qmienabled=true \
    ro.baseband.arch=msm \
    ro.opengles.version=131072 \
    ro.product.wireless=WCN3660 \
    ro.qualcomm.bt.hci_transport=smd \
    com.qc.hardware=true \
    debug.composition.type=dyn \
    debug.egl.hw=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    dev.pm.dyn_samplingrate=1 \
    lpa.decode=true \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    persist.audio.speaker.location=high \
    persist.hwc.mdpcomp.enable=true \
    persist.thermal.monitor=true \
    ro.qc.sdk.audio.fluencetype=fluence \
    ro.use_data_netmgrd=true \
    wifi.interface=wlan0

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := evita
PRODUCT_NAME := evita
PRODUCT_BRAND := htc
PRODUCT_MODEL := One XL
PRODUCT_MANUFACTURER := HTC
