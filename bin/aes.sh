#!/bin/bash

echo '
Encrypt:
 gpg --cipher-algo AES256 --symmetric filename.tar.gz
Shorthand:
 gpg --cipher-algo AES256 -c filename.tar.gz


Decrypt:
 gpg --output filename.tar.gz --decrypt filename.tar.gz.gpg
Shorthand:
 gpg -o filename.tar.gz -d filename.tar.gz.gpg
'

