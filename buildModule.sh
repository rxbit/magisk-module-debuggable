#!/bin/sh

echo "Module building started"
mkdir build
echo "Copying base module files"
cp -R ./module/* ./build/
echo "Copying installer files"
cp -R ./installer/* ./build/
cd build
echo "Zipping all together"
zip -r ../magisk-module-debuggable . > /dev/null
cd ../
echo "Cleaning"
rm -rf ./build
echo "Done!"
