#
# Copyright (C) 2018 CypherOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_JAVA_LIBRARIES := \
    android-support-annotations

LOCAL_STATIC_ANDROID_LIBRARIES := \
    android-support-v4

LOCAL_STATIC_JAVA_LIBRARIES := \
    prebuilt-gson \
    prebuilt-jsoup \
    prebuilt-okhttp \
    prebuilt-okio

LOCAL_STATIC_JAVA_AAR_LIBRARIES := \
    prebuilt-play-services-basement \
    prebuilt-play-services-base \
    prebuilt-play-services-location \
    prebuilt-play-services-places-placereport \
    prebuilt-play-services-task

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_RESOURCE_DIR += $(foreach lib, $(LOCAL_STATIC_JAVA_AAR_LIBRARIES),\
  $(call intermediates-dir-for,JAVA_LIBRARIES,$(lib),,COMMON)/aar/res)

LOCAL_USE_AAPT2 := true
LOCAL_PROGUARD_ENABLED := disabled
LOCAL_JAR_EXCLUDE_FILES := none
LOCAL_PACKAGE_NAME := WeatherProvider
LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_TAGS := optional

include $(BUILD_PACKAGE)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE := prebuilt-play-services-base
LOCAL_SRC_FILES := libs/aar/play-services-base-16.1.0.aar
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SDK_VERSION := current
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE := prebuilt-play-services-basement
LOCAL_SRC_FILES := libs/aar/play-services-basement-16.2.0.aar
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SDK_VERSION := current
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE := prebuilt-play-services-location
LOCAL_SRC_FILES := libs/aar/play-services-location-16.0.0.aar
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SDK_VERSION := current
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE := prebuilt-play-services-places-placereport
LOCAL_SRC_FILES := libs/aar/play-services-places-placereport-16.0.0.aar
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SDK_VERSION := current
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE := prebuilt-play-services-task
LOCAL_SRC_FILES := libs/aar/play-services-tasks-16.0.1.aar
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SDK_VERSION := current
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE := prebuilt-gson
LOCAL_SRC_FILES := libs/gson-2.8.5.jar
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SDK_VERSION := current
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE := prebuilt-jsoup
LOCAL_SRC_FILES := libs/jsoup-1.11.3.jar
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SDK_VERSION := current
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE := prebuilt-okhttp
LOCAL_SRC_FILES := libs/okhttp-3.11.0.jar
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SDK_VERSION := current
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE := prebuilt-okio
LOCAL_SRC_FILES := libs/okio-1.14.0.jar
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_SDK_VERSION := current
include $(BUILD_PREBUILT)