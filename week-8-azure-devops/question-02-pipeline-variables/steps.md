# Week 8 – Question 2: Use Pipeline Variables in Azure DevOps

## 1. Navigate to Azure DevOps Project
- Go to your Azure DevOps organization
- Select your project (e.g., DevOps-CSI)

## 2. Open Pipelines
- Click on `Pipelines` from the left pane
- Select an existing pipeline or create a new one

## 3. Edit Pipeline YAML
- Click on the `.yaml` file of your pipeline
- Define variables using the `variables` section

Example:
```yaml
trigger:
- main

variables:
  buildConfiguration: 'Release'
  platform: 'any cpu'

pool:
  vmImage: 'ubuntu-latest'

steps:
- script: echo Building in $(buildConfiguration) mode on $(platform)
  displayName: 'Echo variables'
