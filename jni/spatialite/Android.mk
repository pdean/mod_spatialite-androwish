
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

SQLITE_PATH := $(LOCAL_PATH)/sqlite-autoconf-3250300
PROJ4_PATH := $(LOCAL_PATH)/proj-5.2.0
GEOS_PATH := $(LOCAL_PATH)/geos-3.6.3
SPATIALITE_PATH := $(LOCAL_PATH)/libspatialite-5.0.0-beta0

include $(LOCAL_PATH)/sqlite.mk
include $(LOCAL_PATH)/proj4.mk
include $(LOCAL_PATH)/geos.mk
include $(LOCAL_PATH)/spatialite.mk
