## Steps to Attach PVC to Pods in AKS

1. **Create a PersistentVolume (PV)** with a hostPath and storage class.
2. **Create a PersistentVolumeClaim (PVC)** to request storage from the PV.
3. **Deploy a Pod** that uses the PVC as a volume.
4. **Verify** everything is working by checking status of PV, PVC, and the Pod.

```bash
kubectl get pv,pvc,pods
