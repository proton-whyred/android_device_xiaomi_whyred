# ART
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.boot-dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.dex2oat-filter=everything \
    dalvik.vm.dex2oat-threads=8 \
    dalvik.vm.image-dex2oat-filter=everything \
    dalvik.vm.dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.image-dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.image-dex2oat-threads=8 \
    ro.sys.fw.dex2oat_thread_count=8 \
    ro.vendor.qti.am.reschedule_service=true \
    dalvik.vm.heapgrowthlimit=256m

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dirac.acs.controller=qem \
    persist.dirac.acs.ignore_error=1 \
    persist.dirac.acs.storeSettings=1 \
    vendor.audio.adm.buffering.ms=12 \

# Audio Feature
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.feature.compr_voip.enable=true \
    vendor.audio.feature.kpi_optimize.enable=true \
    ro.config.vc_call_vol_steps=7

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.feature.a2dp_offload.enable=true \
    persist.bluetooth.bluetooth_audio_hal.disabled=false \
    persist.vendor.qcom.bluetooth.a2dp_offload_cap=sbc-aptx-aptxhd-aac-ldac \
    persist.vendor.qcom.bluetooth.enable.splita2dp=true \
    ro.bluetooth.library_name=libbluetooth_qti.so \
    ro.vendor.bluetooth.wipower=false \
    vendor.qcom.bluetooth.soc=cherokee \
    persist.vendor.service.bdroid.sibs=false

# Camera 
PRODUCT_PROPERTY_OVERRIDES += \
    camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.qualcomm.qti.qmmi \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.qualcomm.qti.qmmi,com.longcheertel.cit \
    persist.vendor.camera.preview.ubwc=0 \
    persist.vendor.camera.stats.test=5 \
    persist.vendor.camera.depth.focus.cb=0 \
    persist.vendor.camera.imglib.usefdlite=1 \
    persist.vendor.camera.isp.clock.optmz=0 \
    persist.vendor.camera.linkpreview=0 \
    persist.vendor.camera.isp.turbo=1 \
    persist.vendor.camera.exif.make=Xiaomi \
    persist.vendor.camera.exif.model=Redmi[SPACE]Note[SPACE]5 \
    persist.vendor.camera.expose.aux=1 \
    persist.vendor.camera.fdvideo=1 \
    persist.vendor.camera.awb.sync=2 \
    persist.vendor.flash.low.lux=390 \
    persist.vendor.flash.light.lux=340 \
    persist.vendor.imx376_ofilm.low.lux=310 \
    persist.vendor.imx376_ofilm.light.lux=280 \
    persist.vendor.imx376_sunny.low.lux=310 \
    persist.vendor.imx376_sunny.light.lux=280 \
    persist.vendor.ov13855_sunny.low.lux=385 \
    persist.vendor.ov13855_sunny.light.lux=370 \
    persist.vendor.s5k3l8_ofilm.low.lux=379 \
    persist.vendor.camera.enableAdvanceFeatures=0x347 \
    persist.camera.max.previewfps=60 \
    persist.vendor.camera.max.previewfps=60 \
    persist.vendor.s5k3l8_ofilm.light.lux=367 \
    persist.vendor.camera.HAL3.enabled=1 \
    persist.vendor.camera.ltm.overlap=13 \
    vendor.camera.hal1.packagelist=com.whatsapp,com.intsig.camscanner,com.instagram.android

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
    ro.charger.enable_suspend=true

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.latch_unsignaled=1 \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.hw=1 \
    debug.sf.disable_backpressure= 1 \
    debug.sf.early_app_phase_offset_ns=11600000 \
    debug.sf.early_gl_phase_offset_ns=3000000 \
    debug.sf.early_gl_app_phase_offset_ns=15000000 \
    debug.sf.early_phase_offset_ns=11600000 \
    debug.sf.phase_offset_threshold_for_next_vsync_ns=11600000 \
    debug.sf.enable_gl_backpressure=1 \
    debug.cpurend.vsync=false \
    debug.hwui.use_buffer_age=false \
    persist.debug.wfd.enable=1 \
    persist.hwc.enable_vds=1 \
    ro.opengles.version=196610 \
    ro.qualcomm.cabl=0 \
    vendor.display.disable_skip_validate=1 \
    vendor.gralloc.enable_fb_ubwc=1 \
    vendor.video.disable.ubwc=1 \
    vendor.display.enable_default_color_mode=0 \
    video.disable.ubwc=1 \
    ro.sf.lcd_density=440 \
    ro.surface_flinger.use_color_management=true

# The default sf phase offset is set to 6ms, to avoid it be included into next
# vsync threshold, set high fps early sf and next vsync threshold phase offset
# to 6.1ms, which is bigger than all sf phase offsets in normal frame rate.
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.high_fps_early_phase_offset_ns=6100000 \
    debug.sf.high_fps_early_gl_phase_offset_ns=9000000

# Dual SIM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds

# Fling
PRODUCT_PROPERTY_OVERRIDES += \
    ro.min.fling_velocity=160 \
    ro.max.fling_velocity=20000

# GMS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase.ms=android-xiaomi-rev2

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.data.iwlan.enable=true \
    persist.vendor.iwlan.enable=true \
    persist.vendor.radio.data_con_rprt=1

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.vendor.ims.disableUserAgent=0

ifeq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.ims.disableADBLogs=1 \
    persist.vendor.ims.disableDebugLogs=1 \
    persist.vendor.ims.disableIMSLogs=1 \
    persist.vendor.ims.disableQXDMLogs=1
endif

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0 \
    media.aac_51_output_enabled=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-player=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-scan=true \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    mm.enable.qcom_parser=13631471 \
    mm.enable.smoothstreaming=true \
    mmp.enable.3g2=true \
    persist.mm.enable.prefetch=true \
    vendor.vidc.dec.enable.downscalar=1 \
    vendor.vidc.enc.disable.pq=true \
    vendor.vidc.enc.disable_bframes=1 \
    vidc.enc.dcvs.extra-buff-count=2 \
    vidc.enc.target_support_bframe=1

# Netflix custom property
PRODUCT_PROPERTY_OVERRIDES += \
    ro.netflix.bsp_rev=Q660-13149-1

# OEM Unlock reporting
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.oem_unlock_supported=1

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# Proximity
PRODUCT_PROPERTY_OVERRIDES += \
    gsm.proximity.enable=true

# QCOM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true \
    persist.vendor.cne.feature=1 \
    persist.vendor.dpm.feature=1 \
    persist.vendor.dpm.nsrm.bkg.evt=3955 \
    persist.vendor.qcomsysd.enabled=1

# QTI
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.va_aosp.support=1

PRODUCT_ODM_PROPERTIES += \
    ro.vendor.qti.va_odm.support=1

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.aosp_usr_pref_sel=true \
    persist.radio.add_power_save=1 \
    persist.radio.VT_CAM_INTERFACE=2 \
    persist.radio.data_con_rprt=1 \
    persist.vendor.data.mode=concurrent \
    persist.vendor.qti.telephony.vt_cam_interface=1 \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.atfwd.start=true \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.data_con_rprt=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.procedure_bytes=SKIP \
    vendor.rild.libpath=/vendor/lib64/libril-qc-hal-qmi.so \
    ro.telephony.default_network=9,9 \
    ro.telephony.iwlan_operation_mode=legacy \
    ro.vendor.use_data_netmgrd=true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    DEVICE_PROVISIONED=1 \
    ril.subscription.types=NV,RUIM \
    telephony.lteOnCdmaDevice=1

# Rendering
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.egl=adreno \
    ro.hardware.vulkan=adreno \
    debug.egl.hw=1 \
    debug.enable.sglscale=1 \
    debug.sf.disable_hwc=0 \
    debug.sf.gpu_comp_tiling=1 \
    debug.sf.recomputecrop=0 \
    persist.hwc.ptor.enable=true \
    debug.sdm.support_writeback=0 \
    vendor.display.disable_rotator_downscale=1 \
    vendor.display.disable_scaler=0

# Sensor
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sdk.sensors.gestures=false \
    ro.vendor.sensors.cmc=false \
    ro.vendor.sensors.dev_ori=false \
    ro.vendor.sensors.facing=false \
    ro.vendor.sensors.mot_detect=true \
    ro.vendor.sensors.pmd=true \
    ro.vendor.sensors.sta_detect=true

# SurfaceFlinger
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.max_virtual_display_dimension=4096 \
    ro.surface_flinger.protected_contents=true

# WFD
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0

# Zygote preforking
PRODUCT_PROPERTY_OVERRIDES += \
    persist.device_config.runtime_native.usap_pool_enabled=true

# Use 64-bit dex2oat for better dexopt time.
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat64.enabled=true

# Swap type
PRODUCT_PROPERTY_OVERRIDES += \
    swap_type=zram

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.shutdown_timeout=2
