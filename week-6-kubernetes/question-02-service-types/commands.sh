#!/bin/bash

# Create a namespace for isolation
kubectl create namespace k8s-service-demo

# Create a simple deployment (e.g., nginx)
kubectl create deployment nginx-deployment --image=nginx --replicas=2 -n k8s-service-demo

# Expose using ClusterIP (default)
kubectl expose deployment nginx-deployment --port=80 --target-port=80 --type=ClusterIP -n k8s-service-demo

# Get service details
kubectl get services -n k8s-service-demo

# Delete the service to try the next type
kubectl delete service nginx-deployment -n k8s-service-demo

# Expose using NodePort
kubectl expose deployment nginx-deployment --port=80 --target-port=80 --type=NodePort -n k8s-service-demo

# Get node port
kubectl get svc -n k8s-service-demo

# Access using Minikube IP + NodePort
minikube service nginx-deployment -n k8s-service-demo

# Delete service again
kubectl delete service nginx-deployment -n k8s-service-demo

# Expose using LoadBalancer (will work with cloud or minikube tunnel)
kubectl expose deployment nginx-deployment --port=80 --target-port=80 --type=LoadBalancer -n k8s-service-demo

# Get LoadBalancer details
kubectl get svc -n k8s-service-demo

# Optional: Use Minikube tunnel for LoadBalancer
# Run this in a separate terminal
# minikube tunnel

