# Release name
PRODUCT_RELEASE_NAME := Nexus7

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-800x1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/grouper/full_grouper.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fx3
PRODUCT_NAME := cm_fx3
PRODUCT_BRAND := Optimus
PRODUCT_MODEL := Optimus f3
PRODUCT_MANUFACTURER := LG

#Set build fingerprint / ID / Product Name ect.
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/:4.1.1/JRO03D/402395:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.1.1 JRO03D 402395 release-keys"
