# trash dataset resized to (256, 192)
from [garythung/trashnet](https://github.com/garythung/trashnet)

## diff from original
* resized from (512, 384) to (256, 192)
* `resize.py` updated to use `PIL` and `python-resize-image` instead of `scipy`
* additional grayscale dataset

*NOTE : stick to `png` whenever and wherever possible. `jpeg` resizing degrades image quality quite badly.*
*NOTE : `quality` factor doesn't seem to differentiate while training.*

*just stick to `quality=keep`*

## usage
### RGB dataset
`PIL.Image.save(quality=100, subsampling=0)`

RGB dataset is over 100 MB so you have to download from gdrive
```
chmod +x ./download.sh ./check.sh
./download.sh rgb && ./check.sh rgb
tar -zxf dataset-resized.tar.gz
```

### RGB smaller(more compression) dataset
`PIL.Image.save(quality=100, subsampling=-1)`

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

### RGB smaller smaller (more compression) dataset
`PIL.Image.save(quality='keep', subsampling=-1)`

just download and
```
chmod +x ./check.sh
./check.sh rgb-ss
tar -zxf dataset-resized-ss.tar.gz
```

or you can download from gdrive
```
chmod +x ./download.sh ./check.sh
./download.sh rgb-ss && ./check.sh rgb-ss
tar -zxf dataset-resized-ss.tar.gz
```

### grayscale dataset
`PIL.Image.save(quality=100)`

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

### grayscale smaller dataset
`PIL.Image.save() # quality=75 as default`

just download and
```
chmod +x ./check.sh
./check.sh grayscale-s
tar -zxf dataset-resized-grayscale-s.tar.gz
```

or you can download from gdrive
```
chmod +x ./download.sh ./check.sh
./download.sh grayscale-s && ./check.sh grayscale-s
tar -zxf dataset-resized-grayscale-s.tar.gz
```

### also supports
resize using `PIL.Image.resize`, `PIL.Image.crop`

#### 128 * 128 resolution, cropping sides
* rgb-png128
* rgb-alt128

#### 96 * 96 resolution, cropping sides
* rgb-png96
* rgb-alt96

#### 64 * 64 resolution, cropping sides
* rgb-png64
* rgb-alt64

#### 48 * 48 resolution, cropping sides
* grayscale-png64


`quality=keep` for rgb, `quality=75` for grayscale

#### 128 * 128 resolution, cropping sides
* rgb-128

#### 96 * 96 resolution, cropping sides
* rgb-96
* grayscale-96

#### 112 * 84 resolution
* rgb-112
* grayscale-112

#### 64 * 64 resolution
* rgb-64
* grayscale-64

