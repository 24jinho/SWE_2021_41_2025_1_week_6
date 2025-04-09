#!/bin/bash

cd files

for file in *;do

    first=$(echo "${file:0:1}" | tr '[:upper:]' '[:lower:]')
    cd ..
    mkdir -p "$first"
    mv "files/$file" "$first/"
    cd files
done