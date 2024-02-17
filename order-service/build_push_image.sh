#! bin/bash

#Create a Docker image from a Dockerfile
# docker build . -t ghcr.io/robertheo15/order-service:v1
docker build . -t robertheo/order-service:v1

#View a list of local Docker images
docker images
#Changing the image name according to the Docker Hub format
docker tag order-service:v1 ghcr.io/robertheo15/order-service:v1
#Login to Docker Hub
cat ./my_password.txt | docker login --username robertheo --password-stdin
#Upload image to Docker Hub
docker push ghcr.io/robertheo15/order-service:v1