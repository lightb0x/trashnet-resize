import os
import constants
import numpy as np
from PIL import Image
from resizeimage import resizeimage

def fileWalk(directory, destPath):
	try: 
		os.makedirs(destPath)
	except OSError:
		if not os.path.isdir(destPath):
			raise

	for subdir, dirs, files in os.walk(directory):
		for file in files:
			if len(file) <= 4 or file[-4:] != '.jpg':
				continue

			pic = Image.open(os.path.join(subdir, file))
			dim2, dim1 = pic.size # width, height
			if dim1 > dim2:
				pic = pic.rotate(angle=90)

			pic = pic.convert("L")
			pic = resizeimage.resize_thumbnail(pic, [constants.DIM2, constants.DIM1])
			pic.save(os.path.join(destPath, file), quality=100, subsampling=0)
		

def main():
	prepath = os.path.join(os.getcwd(), 'dataset-original')
	glassDir = os.path.join(prepath, 'glass')
	paperDir = os.path.join(prepath, 'paper')
	cardboardDir = os.path.join(prepath, 'cardboard')
	plasticDir = os.path.join(prepath, 'plastic')
	metalDir = os.path.join(prepath, 'metal')
	trashDir = os.path.join(prepath, 'trash')

	destPath = os.path.join(os.getcwd(), 'dataset-resized-greyscale')
	try: 
		os.makedirs(destPath)
	except OSError:
		if not os.path.isdir(destPath):
			raise

	#GLASS
	fileWalk(glassDir, os.path.join(destPath, 'glass'))

	#PAPER
	fileWalk(paperDir, os.path.join(destPath, 'paper'))

	#CARDBOARD
	fileWalk(cardboardDir, os.path.join(destPath, 'cardboard'))

	#PLASTIC
	fileWalk(plasticDir, os.path.join(destPath, 'plastic'))

	#METAL
	fileWalk(metalDir, os.path.join(destPath, 'metal'))

	#TRASH
	fileWalk(trashDir, os.path.join(destPath, 'trash'))  

if __name__ == '__main__':
    main()

