
TOP=${PWD}
. build/envsetup.sh

#############################################################
# PATCHES                                                   #
#############################################################

cd system/qcom
git am -3 $TOP/0001-DNM-libqsap_sdk-Suppress-warnings.patch
cd $TOP

#############################################################
# CHERRYPICKS                                               #
#############################################################

# Example: repopick [CHANGE_NUMBER]
# android_build
repopick 222733 222760

# android_bionic
repopick 223067

# android_external_perfetto
repopick 223413

# android_external_tinycompress
repopick 225762-225763 223008 223011;

# android_hardware_interfaces
repopick 224064

# android_system_bt
repopick 223945 225422 225423

# android_system_core
repopick 223085 223500 224264

# android_system_sepolicy
repopick 223746 223748

# android_vendor_lineage
repopick 223890 224758

# android_hardware_qcom_audio
repopick -t 8916-audio-p

# android_hardware_qcom_bt
repopick -t pie-bt-caf

# android_hardware_qcom_display
repopick -t 8916-display-p

# android_hardware_qcom_media
repopick -t 8916-media-p

# android_hardware_qcom_power
repopick 223892

# android_hardware_qcom_wlan
repopick -t pie-wlan-caf

# android_hardware_qcom_fm
repopick 226683-226743 223685 226744 226745 223678 223683 223684 226862 223686 223687 223692 223688 224246 224386

repopick -t per-process-sdk-override

# Styles
repopick -t pie-styles -e 225583,225755
