# trash dataset resized to (256, 192)
from [garythung/trashnet](https://github.com/garythung/trashnet)

## diff from original
* resized from (512, 384) to (256, 192)
* `resize.py` updated to use `PIL` and `python-resize-image` instead of `scipy`
* additional greyscale dataset

## usage
### RGB dataset
RGB dataset is over 100 MB so you have to download from gdrive
```
chmod +x ./download.sh ./check.sh
./download.sh rgb && ./check.sh rgb
tar -zxvf dataset-resized.tar.gz
```

### greyscale dataset
just download and
```
chmod +x ./check.sh
./check.sh greyscale
tar -zxvf dataset-resized-greyscale.tar.gz
```

or you can download from gdrive
```
chmod +x ./download.sh ./check.sh
./download.sh greyscale && ./check.sh greyscale
tar -zxvf dataset-resized-greyscale.tar.gz
```

