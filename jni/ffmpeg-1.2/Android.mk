#CAL_PATH := $(call my-dir)
#include $(CLEAR_VARS)
#LOCAL_WHOLE_STATIC_LIBRARIES := libavformat libavcodec libavutil libpostproc libswscale
#LOCAL_MODULE := ffmpeg
#include $(BUILD_SHARED_LIBRARY)
#include $(call all-makefiles-under,$(LOCAL_PATH))	

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
#LOCAL_STATIC_LIBRARIES := libavformat libavcodec libavutil libpostproc libswscale libavfilter libavdevice
LOCAL_STATIC_LIBRARIES := libavformat libavcodec libavutil libpostproc libswscale libswresample libavfilter libavdevice
LOCAL_MODULE := ffmpeg

#LOCAL_C_INCLUDES :=\
		   $(LOCAL_PATH)/\
		   $(LOCAL_PATH)/libavcodec \
		   $(LOCAL_PATH)/libavdevice \
		   $(LOCAL_PATH)/libavfilter \
		   $(LOCAL_PATH)/libavformat \
		   $(LOCAL_PATH)/libavutil \
		   $(LOCAL_PATH)/libpostproc \
		   $(LOCAL_PATH)/libswscale \

#LOCAL_SRC_FILES := \
		$(LOCAL_PATH)/ffmpeg.c\
		cmdutils.c

#include $(BUILD_EXECUTABLE)
include $(BUILD_SHARED_LIBRARY)
include $(call all-makefiles-under,$(LOCAL_PATH))

