#!/bin/bash
variant=$1
if [ $variant = "rgb" ]
then
	FILENAME="dataset-resized.tar.gz"
	chk="^2fdb8ef776193b40000e997b55241a73*"
elif [ $variant = "rgb-s" ]
then
	FILENAME="dataset-resized-s.tar.gz"
	chk="^37caab59f46ef86454547e53a1378f10*"
elif [ $variant = "grayscale" ]
then
	FILENAME="dataset-resized-grayscale.tar.gz"
	chk="^ebfebc468ebfec4ab2973102d507127a*"
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

