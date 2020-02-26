#!/bin/bash

# This script is just for if you want to try bagging a test folder here.
# It will create a folder called 'bag-in-place' in the current folder.

# Remove the bag-in-place folder we created on the last test if it's there.
# This is **ONLY** relevant in this example folder. It's here to clean up after creating the zip.
rm -f ./bag-in-place.zip
rm -rf ./bag-in-place

# To avoid modifying the test folder, first we create a copy of it called "bag-in-place".
cp -rf ./folder-to-bag ./bag-in-place
