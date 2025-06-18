# Question 08 – Set up a Domain and Use DNS Server for Traffic

This question involves setting up a public-facing domain using Azure DNS by associating a DNS name with a public IP address of a VM, and hosting a simple Apache web server on that VM.

---

## ✅ Steps Performed:

### 1. **Created a Virtual Machine:**
```bash
az vm create \
  --resource-group myResourceGroup \
  --name WebVM \
  --image Ubuntu2204 \
  --admin-username azureuser \
  --generate-ssh-keys \
  --public-ip-sku Standard \
  --size Standard_B1s
