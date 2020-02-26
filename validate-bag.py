import bagit

bag = bagit.Bag('./bag-in-place')
if bag.is_valid():
    print ("Folder 'bag-in-place' is a valid bag.")
else:
    print ("Problem - Folder 'bag-in-place' is *NOT* a valid bag.")
