#!/bin/bash
variant=$1
if [ $variant = "rgb" ]
then
	gID="1foQQMpbOVbge7_q6MkYnoqsiNR4Y9MVM"
elif [ $variant = "rgb-s" ]
then
	gID="1dnOWEZyZYsJ6Tei0jeVYYkR_Z5bFY5Fu"
elif [ $variant = "rgb-ss" ]
then
	gID="1paONIJ1MntvY2LI1SBDAJ9eXXpx9r1A8"
elif [ $variant = "grayscale" ]
then
	gID="1pM3HuOmdOBIHV0XhpkFU3gxK8ZIkgZ1n"
elif [ $variant = "grayscale-s" ]
then
	gID="1v3DYyLzUFucSfdG6TwpHy7vFiJuU37nP"
else
	echo "not available."
	exit 1
fi
/bin/bash ./gdrive_download.sh $gID

