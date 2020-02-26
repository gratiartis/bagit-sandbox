#!/bin/bash

# The following runs bagit.py from its sub-directory against the new "bag-in-place" directory.
# Note that the following sets the hash algorithm to SHA-1 (MD5 is default).
# You can change it to stronger hashes. i.e. Use --sha512 instead.
# Note the main parts of this:
#    python ./bagit.py         :: Run the bagit.py script using python
#    --sha1                    :: Use the SHA-1 hash algorithm for manifests
#    --contact-name 'Yvette'   :: Set the property in bag-info.txt - Contact-Name: Yvette 
#    ./bag-in-place            :: The folder you want to bag. In this case a folder called 'bag-in-place'

python ./bagit.py --sha1 --contact-name 'Yvette' ./bag-in-place

# Zip the bag-in-place folder with its BagIt manifest files.
# Note the main parts of this:
#    zip                    :: Run the zip command
#    -r                     :: Recursive - get all folders and files in the folder.
#    ./bag-in-place.zip     :: The path & name of the zip file to create.
#    ./bag-in-place         :: The path & name of the folder to zip.

zip -r ./bag-in-place.zip ./bag-in-place
