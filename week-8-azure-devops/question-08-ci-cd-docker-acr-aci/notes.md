
---

## 🧾 `notes.md` (Concepts)

```md
# CI/CD to Azure Container Instances (ACI)

## Why ACI?
- Serverless container service
- No orchestration overhead like AKS
- Instant deployment of container images

## Pipeline Overview
- Build → Docker image
- Push → Azure Container Registry
- Deploy → Azure CLI creates container in ACI

## Key Tools
- Azure DevOps YAML
- Azure CLI
- Docker@2 task
- az container create
