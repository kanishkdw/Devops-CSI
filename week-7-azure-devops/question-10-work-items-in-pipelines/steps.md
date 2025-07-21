# Week 7 – Question 10: Use Work Items in Pipelines

## Objective:
Track pipeline runs by linking them to Azure Boards work items like tasks, bugs, and user stories.

---

## Steps to Enable Work Item Tracking

### 1. Navigate to Azure DevOps > Pipelines > [Your Pipeline]
### 2. Click on Edit > Add `checkout` step with proper settings
```yaml
trigger:
- main

pool:
  vmImage: ubuntu-latest

steps:
- checkout: self
  persistCredentials: true

- script: echo "Running build for work item"
