# Week 8 – Q10: Build & Deploy React App to Azure VM

---

## Step 1: Prepare Azure VM

1. Go to Azure Portal → Virtual Machines → Create a VM
2. Use Ubuntu 20.04 LTS, allow SSH (port 22)
3. Note down the Public IP of VM
4. SSH into VM:
```bash
ssh azureuser@<Public-IP>
