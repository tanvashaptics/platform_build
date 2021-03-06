#####################################################
## Shared definitions for all host test compilations.
#####################################################

LOCAL_CFLAGS_windows += -DGTEST_OS_WINDOWS
LOCAL_CFLAGS_linux += -DGTEST_OS_LINUX
LOCAL_LDLIBS_linux += -lpthread
LOCAL_CFLAGS_darwin += -DGTEST_OS_MAC
LOCAL_LDLIBS_darwin += -lpthread

LOCAL_CFLAGS += -DGTEST_HAS_STD_STRING -O0 -g

LOCAL_STATIC_LIBRARIES += libgtest_main_host libgtest_host

ifdef LOCAL_MODULE_PATH
$(error $(LOCAL_PATH): Do not set LOCAL_MODULE_PATH when building test $(LOCAL_MODULE))
endif

ifdef LOCAL_MODULE_PATH_32
$(error $(LOCAL_PATH): Do not set LOCAL_MODULE_PATH_32 when building test $(LOCAL_MODULE))
endif

ifdef LOCAL_MODULE_PATH_64
$(error $(LOCAL_PATH): Do not set LOCAL_MODULE_PATH_64 when building test $(LOCAL_MODULE))
endif
