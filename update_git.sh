#!/bin/sh

for d in ./../* ; do
    echo "$d"	
	cd $d
	# git add *
	git pull		
done
