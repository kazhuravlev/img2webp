# Image to WebP converter

Docker image that helps to convert all pictures in selected folder to WebP.

## Installation

Image is already build and hosted on hub.docker.com. No installation is
required.

## Running

Imagine that you have directory layout like this:

```
 .
 ├── out-images
 └── source-images
    ├── img-1.jpeg
    ├── img-2.png
    └── img-3.gif
```

To convert all images in specified directory just run:

```shell
docker run \
  --rm \
  -v `pwd`/source-images:/source \
  -v `pwd`/out-images:/output \
  kazhuravlev/img2webp:latest
```

After process ends you can find converted images in out dir

```
 .
 ├── out-images
 │  ├── img-1.jpeg
 │  ├── img-2.png
 │  └── img-3.gif
 └── source-images
    ├── img-1.jpeg
    ├── img-2.png
    └── img-3.gif
```

NOTE: images will have the same names (include extension), but this is a
WebP images.