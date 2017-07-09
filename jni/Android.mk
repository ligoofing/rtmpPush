LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := livestreamingjni

LOCAL_SRC_FILES := publish_jni.cpp \
                   Rtmp.cpp
LOCAL_LDLIBS := -llog

#LOCAL_SHARED_LIBRARIES := $(LOCAL_PATH)/lib/armeabi/librtmp.so

LOCAL_LDLIBS += -L$(LOCAL_PATH)/lib/armeabi/ -lrtmp

#LOCAL_LDFLAGS := -L$(LOCAL_PATH)/lib/armeabi -lrtmp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/ \
                    $(LOCAL_PATH)/include/ \
                    $(LOCAL_PATH)/include/librtmp/ \
                    $(LOCAL_PATH)/include/polarssl/ 

include $(BUILD_SHARED_LIBRARY)
