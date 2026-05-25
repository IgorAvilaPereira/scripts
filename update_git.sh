#!/bin/sh
echo "scripts"
git pull
for d in ./../* ; do
    echo "$d"	
	cd $d && git pull		
done
