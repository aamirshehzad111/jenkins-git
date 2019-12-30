#!/bin/sh


printenv BULID
touch aaamir.txt
printenv BULID  > /usr/share/nginx/html/index.html
sudo service nginx restart



