$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

PRODUCT_COPY_FILES += \
	device/generic/goldfish/init.recovery.goldfish.rc:recovery/root/init.recovery.goldfish.rc
