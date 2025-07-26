# Week 8 – Question 4: Create a Service Connection

## Step 1: Go to Project Settings
1. Open your Azure DevOps project.
2. In the left sidebar, scroll down and click on **Project settings**.

## Step 2: Navigate to Service Connections
1. Under **Pipelines**, click on **Service connections**.
2. Click **+ New service connection**.

## Step 3: Choose a Connection Type
You will be prompted to select a connection type. Common examples:
- Azure Resource Manager
- Docker Registry
- GitHub
- AWS

For this assignment, choose **Azure Resource Manager**.

## Step 4: Choose Authentication Method
1. Choose **Service Principal (automatic)**.
2. Select your Azure subscription and click **Next**.

## Step 5: Configure Connection
1. Give the service connection a name, e.g., `MyAzureServiceConnection`.
2. Optionally, grant access permission to all pipelines.
3. Click **Save**.

## Step 6: Use in Pipeline
In your YAML file or UI editor:
```yaml
pool:
  vmImage: 'ubuntu-latest'

steps:
- task: AzureCLI@2
  inputs:
    azureSubscription: 'MyAzureServiceConnection'
    scriptType: 'bash'
    scriptLocation: 'inlineScript'
    inlineScript: |
      az group list
