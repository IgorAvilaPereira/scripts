#!/bin/sh
for d in ./../* ; do
    echo "$d"	
	cd $d
	git add *
	git commit -m 'teste'	
	git push		
done