#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#ca1f25/g' \
         -e 's/rgb(100%,100%,100%)/#e8e8e8/g' \
    -e 's/rgb(50%,0%,0%)/#ca1f25/g' \
     -e 's/rgb(0%,50%,0%)/#e8e8e8/g' \
 -e 's/rgb(0%,50.196078%,0%)/#e8e8e8/g' \
     -e 's/rgb(50%,0%,50%)/#ca1f25/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#ca1f25/g' \
     -e 's/rgb(0%,0%,50%)/#e8e8e8/g' \
	"$@"