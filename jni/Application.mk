#APP_STL += stlport_shared
APP_STL := gnustl_static
APP_ABI := armeabi-v7a 
#APP_ABI := armeabi
APP_PLATFORM := android-14 
#APP_CPPFLAGS += -fexceptions
#APP_CPPFLAGS += -fno-rtti
APP_CFLAGS:=-DDISABLE_NEON
