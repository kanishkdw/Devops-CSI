# Install minikube (if not installed)
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Start minikube cluster
minikube start --driver=docker

# Check status
minikube status

# View cluster info
kubectl cluster-info

# Check nodes
kubectl get nodes
