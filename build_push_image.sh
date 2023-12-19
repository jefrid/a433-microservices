#!/bin/bash

#melakukan build docker
docker build -t item-app:v1 .

#cek docker images list
docker images

#push docker images
cat ../dockerpass.txt | docker login --username moon8 --password-stdin
docker tag item-app:v1 moon8/item-app:v1
docker push moon8/item-app:v1