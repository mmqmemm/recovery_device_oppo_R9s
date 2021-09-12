LOCAL_PATH := $(call my-dir)

RECOVERY_FROM_BOOT_PATCH := $(intermediates)/recovery_from_boot.p

$(INSTALLED_RECOVERYIMAGE_TARGET): $(recovery_ramdisk) $(MKBOOTIMG) $(recovery_kernel)
	@echo -e ${PRT_IMG}"----- Making recovery image ------"${CL_RST}
	$(call build-recoveryimage-target, $@)
	@echo -e ${PRT_IMG}"----- Made recovery image: $@ --------"${CL_RST}
	$(hide) cat $(LOCAL_PATH)/recovery/patch >> $(INSTALLED_RECOVERYIMAGE_TARGET)
