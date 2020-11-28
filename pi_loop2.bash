#!/usr/local/bin/bash

#if there is not file "pi.py" then exit
if [ ! -f pi.py ]; then
	echo "No pi.py"
exit 1

#if the number of command line args is 0, exit
elif [ $# -eq 0 ]; then
	echo "No trials"
exit 1

else
#loop over number of trials (command line args)
for nt in $*; do
	mkdir $nt  #make a directory
	cd $nt  #move into the directory
	#run pi.py 10 times, put results in an output file
	for i in {1..10}; do
		../pi.py $nt >> pi.out
	done
	cd ..
done
fi
