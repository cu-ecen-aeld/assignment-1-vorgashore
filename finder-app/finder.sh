#!/bin/sh

FILESDIR=$1
SEARCHSTR=$2

# Checking that both arguments are provided 
if [ -z $FILESDIR ] || [ -z $SEARCHSTR ]; then
    echo "Error: one of the necessary parameters not specified, you should provide both directory and filename to initiate search"
    exit 1
fi

# Checking that $filesdir is a directory
if [ -d $FILESDIR ]; then
    :
else
    echo "Error: Specified path is not a directory"
    exit 1
fi

FILE_COUNT=$(ls -ld $FILESDIR/* | grep -v ^d | wc -l)
LINES_COUNT=$(grep $SEARCHSTR $FILESDIR/* -d skip | wc -l )

echo "The number of files are $FILE_COUNT and the number of matching lines are $LINES_COUNT"