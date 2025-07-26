
---

### 🧾 `notes.md` (Concepts Summary)

```md
# Concepts: Azure DevOps Service Connection

## What is a Service Connection?
A service connection is a secure way to connect Azure DevOps pipelines to external services such as:
- Azure
- Docker Hub
- GitHub
- AWS

## Types of Service Connections
- Azure Resource Manager
- Docker Registry
- Generic Service Connection
- GitHub
- Bitbucket

## Why Use It?
- Securely store credentials
- Reuse across pipelines
- Centralized access control

## Best Practices
- Use separate service connections for Dev, Staging, and Production.
- Use appropriate RBAC roles in Azure for the service principal.
