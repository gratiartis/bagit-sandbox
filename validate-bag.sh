#!/bin/bash

# Note the main parts of this:
#    python ./bagit.py         :: Run the bagit.py script using python
#    --validate                :: Just validate
#    ./bag-in-place            :: The path to the bag we want to validate.

python ./bagit.py --validate ./bag-in-place
