#!/bin/bash
kubectl apply -f persistent-volume.yaml
kubectl apply -f persistent-volume-claim.yaml
kubectl apply -f pod-using-pvc.yaml
kubectl get pv,pvc,pods
