
---

### 🧾 `notes.md` (Concept Summary)

```md
# Concepts: CI/CD for React on Azure VM

## Tools Used:
- NodeTool: To setup Node.js
- CopyFiles & PublishBuildArtifacts: To store build
- SSH/ SCP: To copy to Azure VM

## Tips:
- Use NGINX or Apache as reverse proxy on VM
- Store secrets securely in Azure DevOps Library
- Use InstallSSHKey@0 if using Secure Files (if not, use inline)

## Alternatives:
- Use FTP deploy instead of SSH
- Use Azure App Service for easier scaling
