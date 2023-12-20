#!/bin/bash

#build dockerfile
docker build -t karsajobs:latest .

#cek docker images
docker images

##push docker images
cat ../dockerpass.txt | docker login --username moon8 --password-stdin
docker tag karsajobs:latest moon8/karsajobs:latest
docker push moon8/karsajobs:latest