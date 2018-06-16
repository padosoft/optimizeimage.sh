#!/bin/bash

# Usage 1:
# optimizeimage.sh /images/dir
#
# Usage 2:
# cd /images/dir
# optimizeimage.sh


_now=$(date +%Y-%m-%d.%H.%M.%S)
echo "starts at $_now"

#! /bin/sh

EXTENSIONSJPPG="jpe?g"
EXTENSIONSPNG="png"

if [ -z "$1" ]; then
    DIR="`pwd`"
else
    DIR="$1"
fi

echo "total dir size: "
find "$DIR" -regextype posix-egrep -regex ".*\.($EXTENSIONSJPPG|$EXTENSIONSPNG)\$" -type f -ls | awk '{total += $7} END {print (total/1024/1024)" MB"}'


echo "OPTIMIZE JPG..."

find "$DIR" -regextype posix-egrep -regex ".*\.($EXTENSIONSJPPG)\$" -type f -print0 | while read -d $'\0' file; do
    echo "optimize ${file}" 
    jpegtran -optimize -progressive -outfile "${file}.optimized" "${file}"    
    chown $(stat -c "%U:%G" "${file}.optimized") "$file"
    chmod $(stat -c "%a" "${file}.optimized") "$file"
    mv -f "${file}.optimized" "$file"; 
done


echo "OPTIMIZE PNG..."

find "$DIR" -regextype posix-egrep -regex ".*\.($EXTENSIONSPNG)\$" -type f -print0 | while read -d $'\0' file; do
    echo "optimize ${file}"
    optipng -o7 -force "${file}"
done



echo "total dir size in now: "
find "$DIR" -regextype posix-egrep -regex ".*\.($EXTENSIONSJPPG|$EXTENSIONSPNG)\$" -type f -ls | awk '{total += $7} END {print (total/1024/1024)" MB"}'



_now=$(date +%Y-%m-%d.%H.%M.%S)
echo "Finish at $_now"
