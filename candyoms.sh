#!/bin/bash

cd /home/mycax/CANDYOMS/
repo sync --force-sync

echo "REPO HAS BEEN SYNCED"

make clobber
source build/envsetup.sh && time brunch v400
cd /home/mycax/CANDYOMS/out/target/product/v400/
mv CandySiX-v400-*.zip /home/mycax/Desktop/Builds/Candy/

echo "Build for v400 done!"

cd /home/mycax/CANDYOMS/
make clobber
source build/envsetup.sh && time brunch awifi
cd /home/mycax/CANDYOMS/out/target/product/awifi/
mv CandySiX-awifi-*.zip /home/mycax/Desktop/Builds/Candy/

echo "Build for awifi done"

#cd /home/mycax/CANDYOMS/
#make clobber
#source build/envsetup.sh && time brunch oneplus3
#cd /home/mycax/CANDYOMS/out/target/product/oneplus3/
#mv CandySiX-oneplus3-*.zip /home/mycax/Desktop/Builds/Candy/

#echo "Build for oneplus3 done"

echo "SCRIPT FINISHED"
