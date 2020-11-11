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
elif [ $variant = "rgb-png128" ]
then
	FILENAME="dataset-resized-rgb-png128.tar.gz"
	chk="^b66c855ba8edea329506bbde752ab03f*"
elif [ $variant = "rgb-alt128" ]
then
	FILENAME="dataset-resized-rgb-alt128.tar.gz"
	chk="^a7ac7e51d6c67254d892dfc73f80d3e2*"
elif [ $variant = "rgb-128" ]
then
	FILENAME="dataset-resized-rgb-128.tar.gz"
	chk="^8668ec2576df20aa4ebd193db5a35a56*"
elif [ $variant = "rgb-112" ]
then
	FILENAME="dataset-resized-rgb-112.tar.gz"
	chk="^477bb60c89777e5fb2f37fe1efa18f16*"
elif [ $variant = "rgb-png96" ]
then
	FILENAME="dataset-resized-rgb-png96.tar.gz"
	chk="^a86e7ed21bb75ce5ae4d9767a77de38e*"
elif [ $variant = "rgb-alt96" ]
then
	FILENAME="dataset-resized-rgb-alt96.tar.gz"
	chk="^fbe9064a957ae568ddc7dad58d20b7ec*"
elif [ $variant = "rgb-96" ]
then
	FILENAME="dataset-resized-rgb-96.tar.gz"
	chk="^9a6c7e3e461a098b4f77927d17835d2d*"
elif [ $variant = "rgb-png64" ]
then
	FILENAME="dataset-resized-rgb-png64.tar.gz"
	chk="^886baa7a4adfa8f5d0a8414f1b5b5eed*"
elif [ $variant = "rgb-alt64" ]
then
	FILENAME="dataset-resized-rgb-alt64.tar.gz"
	chk="^98385e64fddf548048bd13f9b987a3f1*"
elif [ $variant = "rgb-64" ]
then
	FILENAME="dataset-resized-rgb-64.tar.gz"
	chk="^fb88f42bc1653012f3a3076d7631f11b*"
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
elif [ $variant = "grayscale-64" ]
then
	FILENAME="dataset-resized-grayscale-64.tar.gz"
	chk="^2eabd336f8e25860281cfd83d90d13cc*"
elif [ $variant = "grayscale-png48" ]
then
	FILENAME="dataset-resized-grayscale-png48.tar.gz"
	chk="^71b0fa641d8141ba69f3a9ff0f93afed*"
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

