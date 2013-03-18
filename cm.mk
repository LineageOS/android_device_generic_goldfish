$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

PRODUCT_NAME := cm_goldfish
PRODUCT_DEVICE := generic

# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
