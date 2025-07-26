
---

### 🧾 `notes.md` (Concept Summary)

```md
# Self-Hosted Agents in Azure DevOps

## What is a Self-Hosted Agent?
A self-hosted agent is an Azure DevOps build or deployment agent that you run on your own infrastructure (VM or local machine).

## Benefits:
- Complete control over environment
- Can install custom tools and dependencies
- Can improve performance for large builds

## Agent Pool
A logical group to organize one or more agents. Pipelines can target a specific pool.

## Authentication
Uses a **Personal Access Token (PAT)** to register and communicate with Azure DevOps.

## Operating Modes:
- **Interactive Mode**: Use `./run.sh`
- **Service Mode**: Use `svc.sh install && svc.sh start`

