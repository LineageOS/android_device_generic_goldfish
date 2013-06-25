#!/usr/bin/env bash

repository_template_file=${ANDROID_BUILD_TOP}/device/generic/goldfish/tools/repository.xml_template
#CM_VERSION=$(get_build_var CM_VERSION)
#API_LEVEL=$(get_build_var PLATFORM_SDK_VERSION)
#FILE=${OUT}/addon_cm-${CM_VERSION}.zip
SIZE=$(du -b ${GOLDFISH_ADDON} | awk '{printf $1}')
SHA1=$(sha1sum ${GOLDFISH_ADDON} | awk '{printf $1}')

sed -e "s/API_LEVEL/${API_LEVEL}/" \
	-e "s/CM_VERSION/${CM_VERSION}/" \
	-e "s/SIZE/${SIZE}/" \
	-e "s/SHA1/${SHA1}/" \
	${repository_template_file} > ${OUT}/repository.xml
