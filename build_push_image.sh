#! bin/bash

#Create a Docker image from a Dockerfile
docker build -t item-app:v1 .
#View a list of local Docker images
docker images
#Changing the image name according to the Docker Hub format
docker tag item-app:v1 robertheo/item-app:v1
#Login to Docker Hub
cat ./my_password.txt | docker login --username robertheo --password-stdin
#Upload image to Docker Hub
docker push robertheo/item-app:v1
