#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="thedevices/project-ml-microservice-kubernetes"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run api-ml --generator=run-pod/v1 --image=$dockerpath --port=80
sleep 30

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
#kubectl port-forward deployment.apps/api-ml-deployment 8000:80
kubectl port-forward pod/api-ml 8000:80


