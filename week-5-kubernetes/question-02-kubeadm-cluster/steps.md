# Steps – Kubernetes Cluster using Kubeadm

1. Prepare 2 Linux VMs (Ubuntu preferred): Master and Worker
2. Disable swap on both: `sudo swapoff -a`
3. Install `kubeadm`, `kubelet`, and `kubectl`
4. On Master:
   - Run `kubeadm init --pod-network-cidr=192.168.0.0/16`
   - Copy `admin.conf` to `.kube/config`
   - Apply Calico plugin
5. On Worker:
   - Run the `kubeadm join` command (copied from master output)
6. Verify using:
   ```bash
   kubectl get nodes
