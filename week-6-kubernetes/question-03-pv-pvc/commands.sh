# Create PersistentVolume
kubectl apply -f pv.yaml

# Create PersistentVolumeClaim
kubectl apply -f pvc.yaml

# Verify PV and PVC
kubectl get pv
kubectl get pvc

# Deploy a Pod that uses the PVC
kubectl apply -f pod-using-pvc.yaml

# Verify Pod is running and mounted
kubectl get pods
kubectl describe pod nginx-pvc
