#!/bin/bash

# Create the pod with health probes
kubectl apply -f health-probes.yaml

# Check pod status
kubectl get pods

# Describe pod to verify probes
kubectl describe pod health-probe-pod
