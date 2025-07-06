# Notes – Kubernetes with Minikube

- Minikube is a tool to run Kubernetes locally.
- It runs a single-node Kubernetes cluster inside a VM or Docker container.
- Useful for learning and development purposes.
- Requires hypervisor (VirtualBox, Docker, etc.)

## Common Minikube Commands:
- `minikube start`
- `minikube status`
- `minikube dashboard`
- `minikube stop`

---

## Proof of Minikube Cluster

```bash
kanishk@LAPTOP-DQON54CV:~/Devops-CSI/week-5-kubernetes/question-01-minikube-cluster$ minikube start --driver=docker
😄  minikube v1.36.0 on Ubuntu 22.04 (kvm/amd64)
✨  Using the docker driver based on existing profile
👍  Starting "minikube" primary control-plane node in "minikube" cluster
🚜  Pulling base image v0.0.47 ...
🏃  Updating the running docker "minikube" container ...
🐳  Preparing Kubernetes v1.33.1 on Docker 28.1.1 ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: storage-provisioner, default-storageclass
❗  /usr/local/bin/kubectl is version 1.30.1, which may have incompatibilities with Kubernetes 1.33.1.
    ▪ Want kubectl v1.33.1? Try 'minikube kubectl -- get pods -A'
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default

kanishk@LAPTOP-DQON54CV:~/Devops-CSI/week-5-kubernetes/question-01-minikube-cluster$ minikube status
minikube
type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured

kanishk@LAPTOP-DQON54CV:~/Devops-CSI/week-5-kubernetes/question-01-minikube-cluster$ kubectl cluster-info
Kubernetes control plane is running at https://127.0.0.1:59739
CoreDNS is running at https://127.0.0.1:59739/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

kanishk@LAPTOP-DQON54CV:~/Devops-CSI/week-5-kubernetes/question-01-minikube-cluster$ kubectl get nodes
NAME       STATUS   ROLES           AGE     VERSION
minikube   Ready    control-plane   4h17m   v1.33.1
```
