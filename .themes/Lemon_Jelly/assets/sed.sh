#!/bin/sh
sed -i \
         -e 's/#ffe433/rgb(0%,0%,0%)/g' \
         -e 's/#151101/rgb(100%,100%,100%)/g' \
    -e 's/#ffe433/rgb(50%,0%,0%)/g' \
     -e 's/#151101/rgb(0%,50%,0%)/g' \
     -e 's/#ffe433/rgb(50%,0%,50%)/g' \
     -e 's/#151101/rgb(0%,0%,50%)/g' \
	"$@"
