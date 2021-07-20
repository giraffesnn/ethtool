LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

define all-c-files-under
	$(patsubst ./%,%, $(shell find $(LOCAL_PATH) -name "platform" -prune -o -name "*.c" -and -not -name ".*"))
endef

define all-subdir-c-files
$(call all-c-files-under,.)
endef

C_FILES := $(call all-subdir-c-files)


LOCAL_SRC_FILES := $(C_FILES:$(LOCAL_PATH)/%=%)

LOCAL_SHARED_LIBRARIES := \
		libcutils\
		libutils\
		libcrypto


LOCAL_C_INCLUDES :=  $(KERNEL_HEADERS)

LOCAL_CFLAGS := -DANDROID_CHANGES -DCHAPMS=1 -DMPPE=1 -Iexternal/openssl/include
LOCAL_CFLAGS += -Wno-unused-parameter \
                -Wno-sign-compare \
		-Wno-sometimes-uninitialized \
		-Wno-missing-field-initializers \
		-Wno-pointer-arith \
		-Wno-unused-const-variable
LOCAL_CFLAGS += -DPACKAGE=\"ethtool\" \
                -DVERSION=\"5.4\"

LOCAL_MODULE :=ethtool
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
