# earth texture maps


These model files can be used for the *Shake*Movie repository and moved/linked to:
``
shakemovie/maps
``


**file**: clouds.tga.tar.bz2

- compressed by `tar cvjf clouds.tga.tar.bz2 clouds.tga`

- decompress by `tar xvjf clouds.tga.tar.bz2` 



### Git LFS

Files are stored by [Github LFS](https://git-lfs.github.com). To retrieve the all data, either clone the repository:
```
$ git clone https://github.com/SPECFEM/shakemovie-maps.git
```
or if already done use the git command to update your local files:
```
$ git pull
```


To download a single file:
```
git lfs pull --include "earth/<file>"
```

or if no git available:
```
wget https://github.com/SPECFEM/shakemovie-maps/blob/main/earth/<file>?raw=true
```

You might have to uncompress the files you want using the bunzip2 command.

