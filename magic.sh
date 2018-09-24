#!/bin/sh

# export some variables
MANIFESTURL="https://github.com/Harpia-development/los_harpia/raw/master/harpia.xml"
PATCH="https://github.com/Harpia-development/los_harpia/raw/master/0001-DNM-libqsap_sdk-Suppress-warnings.patch"
file=".repo/local_manifests/loss.xml"
# create local manifest
if [ -e "$file" ]; then
   rm "$file"
   curl --create-dirs -L -o .repo/local_manifests/loss.xml -O -L $MANIFESTURL
   echo "Local manifest created"
else
   curl --create-dirs -L -o .repo/local_manifests/loss.xml -O -L $MANIFESTURL
   echo "Local manifest created"
fi

# download patch
wget -O "0001-DNM-libqsap_sdk-Suppress-warnings.patch" $PATCH
echo "Successfully downloaded $PATCH"

# shallow clone the arm-eabi-4.8 prebuilt toolchain right from AOSP git repo.
git clone --depth=1 https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8 prebuilts/gcc/linux-x86/arm/arm-eabi-4.8
