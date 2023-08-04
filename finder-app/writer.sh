#!/bin/bash

WRITEFILE=$1
WRITESTR=$2

if [ -z $WRITEFILE ] || [ -z $WRITESTR ]; then
    echo "Error: one of the necessary parameters not specified, you should provide both filepath and string to write"
    exit 1
fi

mkdir -p "$(dirname $WRITEFILE)"

echo $WRITESTR > $WRITEFILE
