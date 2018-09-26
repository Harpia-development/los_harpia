#!/bin/sh

# export some variables
MANIFESTURL="https://github.com/Harpia-development/los_harpia/raw/master/harpia.xml"
PATCH="https://github.com/Harpia-development/los_harpia/raw/master/0001-DNM-libqsap_sdk-Suppress-warnings.patch"
# download patches
wget -O "0001-DNM-libqsap_sdk-Suppress-warnings.patch" $PATCH
echo "Successfully downloaded $PATCH"
PATCH="https://raw.githubusercontent.com/nx111/lineage_build_stuff/0ec63f983afea0edf4db236a217a9e5437118794/.mypatches/pick/external/tinycompress/0003-tinycompress-Fix-compilation-on-old-targets.patch"
wget -O "0003-tinycompress-Fix-compilation-on-old-targets.patch" $PATCH
echo "Successfully downloaded $PATCH"
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

