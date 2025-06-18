# Assignment 2 - Question 06: Internal Load Balancer Setup

## Step-by-step Azure CLI commands

```bash
# Create VNet and Subnet
az network vnet create \
  --resource-group myResourceGroup \
  --name lbVnet \
  --address-prefix 10.10.0.0/16 \
  --subnet-name lbSubnet \
  --subnet-prefix 10.10.1.0/24

# Create NSG
az network nsg create \
  --resource-group myResourceGroup \
  --name lbNSG

# Allow inbound HTTP (port 80)
az network nsg rule create \
  --resource-group myResourceGroup \
  --nsg-name lbNSG \
  --name AllowHTTP \
  --protocol Tcp \
  --direction Inbound \
  --priority 1000 \
  --source-address-prefixes '*' \
  --source-port-ranges '*' \
  --destination-address-prefixes '*' \
  --destination-port-ranges 80 \
  --access Allow

# Create Backend VMs
az vm create \
  --resource-group myResourceGroup \
  --name BackendVM1 \
  --vnet-name lbVnet \
  --subnet lbSubnet \
  --nsg lbNSG \
  --image Ubuntu2204 \
  --size Standard_B1s \
  --admin-username azureuser \
  --generate-ssh-keys \
  --public-ip-address ""

az vm create \
  --resource-group myResourceGroup \
  --name BackendVM2 \
  --vnet-name lbVnet \
  --subnet lbSubnet \
  --nsg lbNSG \
  --image Ubuntu2204 \
  --size Standard_B1s \
  --admin-username azureuser \
  --generate-ssh-keys \
  --public-ip-address ""

# Create Standard Internal Load Balancer
az network lb create \
  --resource-group myResourceGroup \
  --name InternalLB \
  --sku Standard \
  --frontend-ip-name LoadBalancerFrontEnd \
  --backend-pool-name BackendPool \
  --vnet-name lbVnet \
  --subnet lbSubnet \
  --private-ip-address 10.10.1.100

# Add NICs to the backend pool
az network nic ip-config address-pool add \
  --address-pool BackendPool \
  --ip-config-name ipconfigBackendVM1 \
  --nic-name BackendVM1VMNic \
  --resource-group myResourceGroup \
  --lb-name InternalLB

az network nic ip-config address-pool add \
  --address-pool BackendPool \
  --ip-config-name ipconfigBackendVM2 \
  --nic-name BackendVM2VMNic \
  --resource-group myResourceGroup \
  --lb-name InternalLB

# Add Load Balancer Rule
az network lb rule create \
  --resource-group myResourceGroup \
  --lb-name InternalLB \
  --name myLoadBalancingRule \
  --protocol Tcp \
  --frontend-port 80 \
  --backend-port 80 \
  --frontend-ip-name LoadBalancerFrontEnd \
  --backend-pool-name BackendPool \
  --probe-name myHealthProbe \
  --idle-timeout 4 \
  --enable-tcp-reset true

# Add Health Probe
az network lb probe create \
  --resource-group myResourceGroup \
  --lb-name InternalLB \
  --name myHealthProbe \
  --protocol tcp \
  --port 80
