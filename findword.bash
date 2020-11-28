#!/usr/local/bin/bash

#if arg 1 (a word) is found in arg 2 (a file)
#hide the grep output
if grep $1 $2 &> /dev/null
then
#say that we found the word in the file
echo "Found $1 in file $2"
else
#say that we did not find the 
echo "Did not find $1 in $2"
fi
