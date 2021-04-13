#!/bin/sh

ogr2ogr -simplify 0.001 \
    data/processed/digiroad_simple.gpkg \
    data/interim/digiroad_merged.gpkg merged
