# Week 8 – Question 3: Use variable and task groups in pipelines

## Step 1: Create a Variable Group
1. Go to Azure DevOps → Pipelines → Library.
2. Click **+ Variable group**.
3. Name it: `MySharedVars`.
4. Add variables like:
   - `appVersion = 1.0.0`
   - `environment = staging`
5. Save the group.

## Step 2: Link Variable Group to Pipeline
1. Open your YAML pipeline.
2. Add:
```yaml
variables:
  - group: MySharedVars
