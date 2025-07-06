# Kubeadm Cluster Setup (Not executed, for documentation)

# On Master Node
sudo kubeadm init --pod-network-cidr=192.168.0.0/16

# Set kubeconfig for kubectl access
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Install Calico (network plugin)
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

# On Worker Node (replace with actual IP and tokens)
sudo kubeadm join <master-ip>:6443 --token <token> --discovery-token-ca-cert-hash sha256:<hash>
