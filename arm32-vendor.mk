
PRODUCT_PROPERTY_OVERRIDES += \
       vendor.rild.libpath=/vendor/lib/libreference-ril.so

# Note: the following lines need to stay at the beginning so that it can
# take priority  and override the rules it inherit from other mk files
# see copy file rules in core/Makefile
PRODUCT_COPY_FILES += \
    development/sys-img/advancedFeatures.ini.arm:advancedFeatures.ini \
    prebuilts/qemu-kernel/arm64/3.18/kernel-qemu2:kernel-ranchu-64 \
    device/generic/goldfish/fstab.ranchu.arm:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.ranchu

