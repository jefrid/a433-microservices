#!/bin/bash
export CR_PAT=YOUR_TOKEN

# melakukan build dari dockerfile
docker build . -t ghcr.io/jefrid/shipping-service:v1 

# cek list docker images yang ada
docker images | grep jefrid

docker tag shipping-service:v1 ghcr.io/jefrid/shipping-service:v1
# push docker images ke github packages
echo $CR_PAT | docker login ghcr.io -u jefrid --password-stdin
docker push ghcr.io/jefrid/shipping-service:v1