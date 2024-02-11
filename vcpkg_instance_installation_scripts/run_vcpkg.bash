#!/usr/bin/bash

# Set the variables of vcpkg
export VCPKG_HOME=/media/khshmt/01D98EC9D79D4800/dev/vcpkg_PRCRS_linux/vcpkg
export VCPKG_INSTANCE_DIR=${VCPKG_HOME}/realtime_cuda_10_1_instance
export VCPKG_DOWNLOADS_DIR=${VCPKG_INSTANCE_DIR}/downloads
export VCPKG_BUILDTREES_DIR=${VCPKG_INSTANCE_DIR}/buildtrees
export VCPKG_INSTALLED_DIR=${VCPKG_INSTANCE_DIR}/installed
export VCPKG_PACKAGES_DIR=${VCPKG_INSTANCE_DIR}/packages
export VCPKG_BINARY_SOURCE_CACHE_DIR=${VCPKG_INSTANCE_DIR}/cache

# Run vcpkg
${VCPKG_HOME}/vcpkg --triplet=x64-linux --downloads-root=${VCPKG_DOWNLOADS_DIR} --x-buildtrees-root=${VCPKG_BUILDTREES_DIR} --x-install-root=${VCPKG_INSTALLED_DIR} --x-packages-root=${VCPKG_PACKAGES_DIR} --binarysource=clear --binarysource=files,${VCPKG_BINARY_SOURCE_CACHE_DIR},readwrite install
