#!/usr/local/bin/bash
counter=0
filename=h2o000.gro
while [ -f $filename ]
do
wc $filename >> lines.out
echo $filename
let counter+=10
filename=$(printf "h2o%03d.gro" $counter)
done
