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
elif [ $variant = "rgb-112" ]
then
	FILENAME="dataset-resized-rgb-112.tar.gz"
	chk="^477bb60c89777e5fb2f37fe1efa18f16*"
elif [ $variant = "rgb-96" ]
then
	FILENAME="dataset-resized-rgb-96.tar.gz"
	chk="^9a6c7e3e461a098b4f77927d17835d2d*"
elif [ $variant = "grayscale" ]
then
	FILENAME="dataset-resized-grayscale.tar.gz"
	chk="^ebfebc468ebfec4ab2973102d507127a*"
elif [ $variant = "grayscale-s" ]
then
	FILENAME="dataset-resized-grayscale-s.tar.gz"
	chk="^8a14b9c647e1b00709920108a4278951*"
elif [ $variant = "grayscale-112" ]
then
	FILENAME="dataset-resized-grayscale-112.tar.gz"
	chk="^b6c9dd7b2ef90434340566c96391ddbf*"
elif [ $variant = "grayscale-96" ]
then
	FILENAME="dataset-resized-grayscale-96.tar.gz"
	chk="^33d254ddc7bb3a9c081add40710fdf93*"
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

