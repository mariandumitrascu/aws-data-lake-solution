#!/bin/bash


template_dir="$PWD"
dist_dir="$template_dir/dist"
source_dir="$template_dir/../source"

echo "------------------------------------------------------------------------------"
echo "[Init] Clean old dist, node_modules and bower_components folders"
echo "------------------------------------------------------------------------------"
echo "rm -rf $dist_dir"
rm -rf $dist_dir
echo "find $source_dir -iname "node_modules" -type d -exec rm -r "{}" \; $VERSION_CODE"
find $source_dir -iname "node_modules" -type d -exec rm -r "{}" \; $VERSION_CODE
echo "find $source_dir -iname "dist" -type d -exec rm -r "{}" \; $VERSION_CODE"
find $source_dir -iname "dist" -type d -exec rm -r "{}" \; $VERSION_CODE
echo "find $source_dir -iname "bower_components" -type d -exec rm -r "{}" \; $VERSION_CODE"
find $source_dir -iname "bower_components" -type d -exec rm -r "{}" \; $VERSION_CODE
echo "find ../ -type f -name 'package-lock.json' -delete"
find $source_dir -type f -name 'package-lock.json' -delete
echo "find ../ -type f -name '.DS_Store' -delete"
find $source_dir -type f -name '.DS_Store' -delete
echo "mkdir -p $dist_dir"
mkdir -p $dist_dir