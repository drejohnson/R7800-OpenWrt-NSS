#!/bin/sh

FILEPATH=master-r14258-81ac2a73bc-20200825
FILESTAMP=R7800-master-r14258-81ac2a73bc-20200825-2058
BUILD_ROOT_FILE=${FILESTAMP}-newBuildroot.sh
PACKAGES_PATCH_FILE=${FILESTAMP}-packages.patch
LUCI_PATCH_FILE=${FILESTAMP}-luci.patch
MAIN_PATCH_FILE=${FILESTAMP}-main.patch

BUILD_ROOT_DL=https://www.dropbox.com/sh/ew0gap0crn30wyk/AADRkcH8LLxLQ2vyBHAcrdAka/${FILEPATH}/${BUILD_ROOT_FILE}?dl=1
wget $BUILD_ROOT_DL -O $BUILD_ROOT_FILE

PACKAGES_PATCH_DL=https://www.dropbox.com/sh/ew0gap0crn30wyk/AAAPfWavm_fgQsDdvPbnuaQ4a/${FILEPATH}/${PACKAGES_PATCH_FILE}?dl=1
wget $PACKAGES_PATCH_DL -O $PACKAGES_PATCH_FILE

LUCI_PATCH_DL=https://www.dropbox.com/sh/ew0gap0crn30wyk/AAD-RVjKLyjzOA623hnOhexNa/${FILEPATH}/${LUCI_PATCH_FILE}?dl=1
wget $LUCI_PATCH_DL -O $LUCI_PATCH_FILE

MAIN_PATCH_DL=https://www.dropbox.com/sh/ew0gap0crn30wyk/AAAs-is0uoppbgFeFtkixHMOa/${FILEPATH}/${MAIN_PATCH_FILE}?dl=1
wget $MAIN_PATCH_DL -O $MAIN_PATCH_FILE
