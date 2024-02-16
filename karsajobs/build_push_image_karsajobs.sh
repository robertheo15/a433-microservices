#! bin/bash

#Create a Docker image from a Dockerfile
#docker buildx build --platform linux/amd64,linux/arm64 -t ghcr.io/robertheo15/karsajobs:latest .
docker build . -t ghcr.io/robertheo15/karsajobs:latest
#View a list of local Docker images
docker images
#Changing the image name according to the Docker Hub format
docker karsajobs:latest ghcr.io/robertheo15/karsajobs:latest

#Login to Docker Hub
cat ./my_password.txt | docker login --username robertheo --password-stdin
#Upload image to Docker Hub
docker push ghcr.io/robertheo15/karsajobs:latest