#!/bin/bash

docker kill $(docker ps -aqf "name=ps5contentserver")
docker rm $(docker ps -aqf "name=ps5contentserver")

# Build the image (lowercase name)
docker build --no-cache -t ps5contentserver .

# Run the container
docker run -d \
  -p 8084:8080 \
  -v /volume1/games/ps4:/usr/src/app/data \
   --name ps5contentserver \
  ps5contentserver:latest
