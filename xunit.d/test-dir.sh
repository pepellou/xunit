#!bin/bash

function testDir {
	while read file
	do
		testFile $1/$file
	done < <(ls -l $1 | awk '{ print $NF }' | grep ".sh$")
}
