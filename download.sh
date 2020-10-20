#!/bin/bash
variant=$1
if [ $variant = "rgb" ]
then
	gID="1foQQMpbOVbge7_q6MkYnoqsiNR4Y9MVM"
elif [ $variant = "greyscale" ]
then
	gID="1SxL7Tbt8HunA4k-484As-BdLXN4Wsqe0"
else
	echo "not available."
	exit 1
fi
/bin/bash ./gdrive_download.sh $gID

