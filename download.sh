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
elif [ $variant = "rgb-128" ]
then
	gID="1Cv2CFVJhc3SweKNYlK4HrFayopIWGyuU"
elif [ $variant = "rgb-alt128" ]
then
	gID="1qArCQVwOmOr8O9jUgN3RHoWSwdSrB67S"
elif [ $variant = "rgb-png128" ]
then
	gID="1ZBh6cnLzP3mVY-mb0ATmyu1708Mx4OjK"
elif [ $variant = "rgb-112" ]
then
	gID="1-MTqABJqi6l1lmy_FZm0bpi59aRfSERu"
elif [ $variant = "rgb-96" ]
then
	gID="1FdfBqxCnzkwIZDmCqkG_LdwRQT0FczBO"
elif [ $variant = "rgb-alt96" ]
then
	gID="1REaLQGIxiUU_IOM6Ci0v4MNv9DZp-hJh"
elif [ $variant = "rgb-png96" ]
then
	gID="1lrJ1Li44dI7hENIRgpUOY61gAE4gB1_W"
elif [ $variant = "rgb-64" ]
then
	gID="1yHMRBFSYxKWKEOH6JT7MLoP3L7FQXU8W"
elif [ $variant = "rgb-alt64" ]
then
	gID="1FYPT3kwWVu-FOLKR8bSciuANq2wjdVd-"
elif [ $variant = "rgb-png64" ]
then
	gID="1uZTJN1NrxP8U-94Q0Ft7Q7MVUF7bn1BH"
elif [ $variant = "grayscale" ]
then
	gID="1pM3HuOmdOBIHV0XhpkFU3gxK8ZIkgZ1n"
elif [ $variant = "grayscale-s" ]
then
	gID="1v3DYyLzUFucSfdG6TwpHy7vFiJuU37nP"
elif [ $variant = "grayscale-112" ]
then
	gID="1EWBjrxqBuoCZLjMWSrvHrtzrCfwiKsEk"
elif [ $variant = "grayscale-96" ]
then
	gID="1QZfbycgeOs3Mt1BbSKN60D0cTN_hhZIP"
elif [ $variant = "grayscale-64" ]
then
	gID="1i5-XzY_8SjimBPjAJNURTnLSj7IMWjwN"
elif [ $variant = "grayscale-png48" ]
then
	gID="1ZCnRaUX0dcbZC5BDesyPhggrodDHW9HG"
else
	echo "not available."
	exit 1
fi
/bin/bash ./gdrive_download.sh $gID

