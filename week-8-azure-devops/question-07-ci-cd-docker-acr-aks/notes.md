
---

## 🧾 `notes.md` (Concepts)

```md
# CI/CD – Build, Push to ACR, and Deploy to AKS

## Pipeline Stages
1. **Build & Push**
   - Docker builds app image
   - Pushes to ACR

2. **Deploy**
   - Uses AKS service connection
   - Applies Kubernetes manifest

## Tools Involved
- Azure Container Registry (ACR)
- Azure Kubernetes Service (AKS)
- Azure DevOps YAML Pipelines
- Docker
- Kubernetes manifests

## DevOps Flow
GitHub / Azure Repo → CI/CD Pipeline → Docker → ACR → AKS
