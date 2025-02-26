#!/bin/sh

writefile=$1
writestr=$2

if [ -z "$writefile" ] || [ -z "$writestr" ]
then
    echo "Both file and write string are required."
    exit 1
fi

mkdir -p $(dirname $writefile)
echo $writestr > $writefile