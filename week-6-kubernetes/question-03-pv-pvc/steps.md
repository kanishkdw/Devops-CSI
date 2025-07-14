# Week 6 - Question 3: PV and PVC in Kubernetes

## Objective
Understand and implement PersistentVolume and PersistentVolumeClaim for data persistence.

## Steps
1. Defined a PersistentVolume using hostPath on local node.
2. Created a PVC to claim a portion of the PV.
3. Launched an NGINX pod and mounted the PVC.
4. Verified that the pod can use persistent storage even if recreated.
