# Week 8 – Question 2: Using Pipeline Variables

## Step 1: Define Custom Variables
- `buildConfig: Release`
- `environment: Development`

## Step 2: Use Built-in Variable
- `$(Build.Reason)` displays the reason for the pipeline trigger (manual, CI, etc.)

## Step 3: Push YAML to GitHub
- Added `azure-pipelines.yml` under `week-8-azure-devops/question-02-pipeline-variables/`

## Step 4: Create Pipeline in Azure DevOps
- Source: GitHub
- Use existing YAML file
- Run and observe the logs
