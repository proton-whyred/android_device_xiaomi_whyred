DEVICE_PATH := device/xiaomi/whyred

# copy kernel headers to the build tree
$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr: $(wildcard $(DEVICE_PATH)/headers/*)
	rm -rf $@
	cp -a $(DEVICE_PATH)/headers/. $@
