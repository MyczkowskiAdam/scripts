#!/bin/bash

cd /home/mycax/SLIM6/
repo sync --force-sync

echo "REPO HAS BEEN SYNCED"

make clobber
source build/envsetup.sh && time brunch v400
cd /home/mycax/SLIM6/out/target/product/v400/
mv Slim-v400-*.zip /home/mycax/Desktop/Builds/Slim/

echo "Build for v400 done!"

cd /home/mycax/SLIM6/
make clobber
source build/envsetup.sh && time brunch awifi
cd /home/mycax/SLIM6/out/target/product/awifi/
mv Slim-awifi-*.zip /home/mycax/Desktop/Builds/Slim/

echo "Build for awifi done"
echo "SCRIPT FINISHED"
