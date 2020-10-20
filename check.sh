#!/bin/bash
variant=$1
if [ $variant = "rgb" ]
then
	FILENAME="dataset-resized.tar.gz"
	chk="^2fdb8ef776193b40000e997b55241a73*"
elif [ $variant = "greyscale" ]
then
	FILENAME="dataset-resized-greyscale.tar.gz"
	chk="^eac21aaa3235babaa267b283462bacfa*"
else
	echo "not available."
	exit 1
fi

cchk=$(md5sum $FILENAME)
if [[ $cchk =~ $chk ]]
then
	echo "checksum passed"
else
	echo "corrupted file"
	exit 1
fi

