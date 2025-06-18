# Assignment 2 – Question 4: Azure Container Instance & Container Groups

## ✅ Objective

- Deploy a simple Docker application using Azure Container Instance (ACI)
- Use a container group to run multiple containers in the same environment
- Test functionality via browser and log output

---

## 🧪 Tools Used

- Azure CLI
- Docker (for testing)
- YAML (for declarative deployment)
- Ubuntu WSL terminal

---

## 📦 Containers Deployed

### 1. `webapp`
- Image: `mcr.microsoft.com/azuredocs/aci-helloworld`
- Port: `80`
- Purpose: Simple web app

### 2. `sidecar`
- Image: `mcr.microsoft.com/oss/busybox/busybox:1.33.1`
- Command: Prints `Sidecar running...` every 5 seconds
- Purpose: Demonstrates container group multi-tasking

---

## 🌐 Access the App

```http
http://kanishkcontainergroupdemo.eastus.azurecontainer.io
