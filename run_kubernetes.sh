#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="thuanbt2/udacity-devops"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacitydevops-thuanbt2 --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacitydevops-thuanbt2 8080:80


