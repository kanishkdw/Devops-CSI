# Week 8 – Q7: CI/CD Pipeline - Docker to ACR and Deploy to AKS

---

## 🧱 Phase 1: Setup ACR (Azure Container Registry)
1. Go to Azure Portal → Create a new resource.
2. Search "Container Registry".
3. Name: `myacrdemo`, SKU: `Basic`, Region: same as AKS.
4. Enable Admin Access.

## 🧱 Phase 2: Setup AKS (Azure Kubernetes Service)
1. Go to Azure Portal → Create AKS.
2. Name: `myaksdemo`, Region: same as ACR.
3. Node size: B2s (or default)
4. Attach ACR: Enable it under the **Integrations** tab.

## 🧱 Phase 3: Create Docker App Repo

Example Dockerfile:

```dockerfile
# Dockerfile
FROM nginx:latest
COPY . /usr/share/nginx/html
