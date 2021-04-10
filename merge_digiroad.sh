#!/bin/sh

ogrmerge.py \
    -o data/interim/digiroad_merged.gpkg \
    data/raw/digiroad_*.gpkg \
    -single \
    -overwrite_ds
