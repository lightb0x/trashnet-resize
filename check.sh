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
elif [ $variant = "rgb-ss" ]
then
	FILENAME="dataset-resized-ss.tar.gz"
	chk="^88f8a050a52a7283fff8080b234c15da*"
elif [ $variant = "grayscale" ]
then
	FILENAME="dataset-resized-grayscale.tar.gz"
	chk="^ebfebc468ebfec4ab2973102d507127a*"
elif [ $variant = "grayscale-s" ]
then
	FILENAME="dataset-resized-grayscale-s.tar.gz"
	chk="^8a14b9c647e1b00709920108a4278951*"
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

