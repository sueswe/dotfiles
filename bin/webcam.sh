#!/bin/bash
fswebcam -S 5 -r 800x600 --jpeg 90 -D 2 /tmp/room.jpg
scp /tmp/room.jpg git@lvgom01.sozvers.at:/srv/www/scheduling.sozvers.at/htdocs/
