#!/bin/bash

# Colorize and add text parameters
grn=$(tput setaf 2)             #  green
txtbld=$(tput bold)             # Bold
bldgrn=${txtbld}$(tput setaf 2) #  green
bldblu=${txtbld}$(tput setaf 4) #  blue
txtrst=$(tput sgr0)             # Reset

# Time of prep startup
res1=$(date +%s.%N)

echo "${bldblu}Starting clean sync AOSPA for LG G4${txtrst}"

mkdir ~/PA
cd ~/PA/ && repo init -u https://github.com/AOSPA/manifest -b marshmallow-caf
repo sync -j4
rm -rf /vendor/pa /device/qcom/sepolicy
git clone -b marshmallow-caf-8992 https://github.com/MyczkowskiAdam/android_device_qcom_sepolicy /device/qcom/sepolicy
git clone -b marshmallow-caf https://github.com/MyczkowskiAdam/android_vendor_pa /vendor/pa

# Get elapsed time
res2=$(date +%s.%N)
echo "${bldgrn}Total time elapsed: ${txtrst}${grn}$(echo "($res2 - $res1) / 60"|bc ) minutes ($(echo "$res2 - $res1"|bc ) seconds) ${txtrst}"
