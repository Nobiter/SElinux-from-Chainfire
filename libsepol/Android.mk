LOCAL_PATH:= $(call my-dir)

common_src_files := \
	src/assertion.c \
	src/avrule_block.c \
	src/android_m_compat.c \
	src/avtab.c \
	src/boolean_record.c \
	src/booleans.c \
	src/conditional.c \
	src/constraint.c \
	src/context.c \
	src/context_record.c \
	src/debug.c \
	src/ebitmap.c \
	src/expand.c \
	src/genbools.c \
	src/genusers.c \
	src/handle.c \
	src/hashtab.c \
	src/hierarchy.c \
	src/iface_record.c \
	src/interfaces.c \
	src/link.c \
	src/mls.c \
	src/module.c \
	src/module_to_cil.c \
	src/node_record.c \
	src/nodes.c \
	src/polcaps.c \
	src/policydb.c \
	src/policydb_convert.c \
	src/policydb_public.c \
	src/port_record.c \
	src/ports.c \
	src/roles.c \
	src/services.c \
	src/sidtab.c \
	src/symtab.c \
	src/user_record.c \
	src/users.c \
	src/util.c \
	src/write.c

common_cflags := \
	-D_GNU_SOURCE \
	-Wall -W \
	-Wshadow -Wmissing-noreturn \
	-Wmissing-format-attribute \
	-Wno-unused-variable -Wno-unused-but-set-variable -Wno-maybe-uninitialized

common_cflags += -fno-builtin

common_includes := \
	$(LOCAL_PATH)/include/ \
	$(LOCAL_PATH)/src/

##
# libsepol.so
#
include $(CLEAR_VARS)

LOCAL_MODULE := libsupol
LOCAL_MODULE_TAGS := optional
LOCAL_COPY_HEADERS_TO := sepol
LOCAL_COPY_HEADERS := include/sepol/handle.h include/sepol/policydb.h
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := $(common_cflags)
LOCAL_SRC_FILES := $(common_src_files)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)
