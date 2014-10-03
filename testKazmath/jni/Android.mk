#LOCAL_PATH := $(call my-dir)
#
#include $(CLEAR_VARS)
#
#LOCAL_MODULE    := kazmath
#LOCAL_SRC_FILES := kazmath.c testKazmath.cpp
#
#include $(BUILD_SHARED_LIBRARY)
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE	:= kazmath
LOCAL_SRC_FILES := $(wildcard $(LOCAL_PATH)/*/*.c) kazmath.c
LOCAL_SRC_FILES := $(LOCAL_SRC_FILES:$(LOCAL_PATH)/%=%) 
LOCAL_CFLAGS	:= "-std=c99"
include $(BUILD_SHARED_LIBRARY)