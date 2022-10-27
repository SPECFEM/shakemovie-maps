#!/bin/bash

image=$1
echo "image: $image"

rm -f tmp*_$image

# split in half
convert -crop 50%x100% +repage $image tmp%d_$image

# merges in opposite order
convert tmp1_$image tmp0_$image +append tmp_all_$image

echo "see: tmp_$image"

