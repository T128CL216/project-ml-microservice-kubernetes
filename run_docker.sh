#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=t128cl216/project-docker:v1.0.0 .
sleep 20
# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app with docker logging

docker run -it --log-driver  json-file --log-opt mode=non-blocking -p 80:80 t128cl216/project-docker:v1.0.0 
sleep 15
# MAP Docker port to local port 
# docker run -p 127.0.0.1:80:9999/tcp ubuntu bash