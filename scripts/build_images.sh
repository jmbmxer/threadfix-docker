#!/bin/bash
dir=$(dirname "$0")
for image_dir in $dir/../images/*
do
  image_name=$(basename $image_dir)
  echo "Building threadfix/$image_name"
  (cd $image_dir && docker build -t threadfix/$image_name .)
done