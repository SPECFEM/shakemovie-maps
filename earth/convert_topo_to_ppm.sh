#!/bin/bash

# topo
if [ 1 == 0 ]; then
  # tga (8-bit res)
  convert resources/earth_bumpmap_8192x4096.jpg -compress none -alpha off -colorspace sRGB -channel rgb -type truecolor topo.tga
  identify topo.tga

else
  # tif -> ppm
  file=resources/ETOPO1_Ice_g_geotiff.tif

  gdalinfo -mm $file

  # directly output ppm file in 16-bit
  gdal_translate -of PNM -ot uint16 -scale -10898 8271 0 65535 -r bilinear -outsize 8192 0 $file topo_8192.ppm
  #gdal_translate -of PNM -ot uint16 -scale -10898 8271 0 65535 -r bilinear -outsize 16384 0 $file topo_16384.ppm

  # should be grayscale 16-bit
  identify -verbose topo_8192.ppm

fi

