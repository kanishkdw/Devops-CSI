# Week 7 - Question 8: Apply Gates to Azure DevOps Pipeline

## Objective
To apply gates in a Release Pipeline that can delay deployment until specific conditions are met (e.g., approval, REST API, Azure monitoring, etc.).

## Steps

### 1. Create a Release Pipeline
- Go to Azure DevOps > Pipelines > Releases.
- Click "New Pipeline" > "Empty Job".
- Name the pipeline.

### 2. Add Artifacts
- Click "Add an artifact".
- Choose the build pipeline as the source.

### 3. Enable Pre-deployment Conditions (Gates)
- Click the lightning bolt icon ⚡ on the stage.
- Enable **Gates** under "Pre-deployment conditions".
- Add gates such as:
  - **Invoke REST API**
  - **Query Azure Monitor alerts**
  - **Check work item queries**
  - **Check for approvals**
- Set timeouts and sampling intervals.

### 4. Save and Create a Release
- Click “Save”.
- Click “Create Release”.
- Validate gates are executed before deployment.

### 5. Monitor Release
- Go to Releases > View logs.
- Confirm gates passed and deployment was successful.
