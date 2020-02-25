#!/bin/bash

# Remove the bag-in-place folder we're about to create, if we have created it.
rm -rf bag-in-place

# To avoid modifying the test folder, first we create a copy of it called "bag-in-place".
cp -rf folder-to-bag bag-in-place

# The following runs bagit.py from its sub-directory against the new "bag-in-place" directory.
# Note that the following sets the hash algorithm to SHA-1 (MD5 is default).
# You can change it to stronger hashes. i.e. Use --sha512 instead.
./bagit-python/bagit.py --sha1 --contact-name 'Yvette' bag-in-place

# Zip the bag-in-place folder with its BagIt manifest files.
# The "-r" means recursive - get all folders and files in the folder.
zip -r bag-in-place.zip bag-in-place
