#
# Copyright (C) 2013 milaq
#
# GooManager specific stuff
#

PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.developerid=milaq \
        ro.goo.rom=cm7nightly \
        ro.goo.version=$(shell date +%s)

# include goo manager
PRODUCT_COPY_FILES += \
       device/htc/kovsky/prebuilt/GooManager.apk:system/app/GooManager.apk
