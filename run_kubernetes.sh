#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=djomajeff/udacity-devops-nd-microservice-ml-project

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-devops-nd-microservice-ml-project\
	--image=$dockerpath\
	--port=80 --labels app=udacity-devops-nd-microservice-ml-project

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-devops-nd-microservice-ml-project 8000:80