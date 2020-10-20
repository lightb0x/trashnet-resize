# trash dataset resized to (256, 192)
from [garythung/trashnet](https://github.com/garythung/trashnet)

## diff from original
* resized from (512, 384) to (256, 192)
* `resize.py` updated to use `PIL` and `python-resize-image` instead of `scipy`
* additional grayscale dataset

## usage
### RGB dataset
RGB dataset is over 100 MB so you have to download from gdrive
```
chmod +x ./download.sh ./check.sh
./download.sh rgb && ./check.sh rgb
tar -zxf dataset-resized.tar.gz
```

### grayscale dataset
just download and
```
chmod +x ./check.sh
./check.sh grayscale
tar -zxf dataset-resized-grayscale.tar.gz
```

or you can download from gdrive
```
chmod +x ./download.sh ./check.sh
./download.sh grayscale && ./check.sh grayscale
tar -zxf dataset-resized-grayscale.tar.gz
```

### RGB smaller(more compression) dataset
just download and
```
chmod +x ./check.sh
./check.sh rgb-s
tar -zxf dataset-resized-s.tar.gz
```

or you can download from gdrive
```
chmod +x ./download.sh ./check.sh
./download.sh rgb-s && ./check.sh rgb-s
tar -zxf dataset-resized-s.tar.gz
```

