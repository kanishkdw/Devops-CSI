# Steps to Apply Triggers in Build and Release Pipelines in Azure DevOps

## A. Configure Build Trigger (CI Trigger)

1. Go to your Azure DevOps project.
2. Navigate to **Pipelines > Pipelines**.
3. Click on your existing build pipeline or create a new one.
4. Click **Edit**.
5. In the YAML editor, ensure the following CI trigger block is present:

```yaml
trigger:
  branches:
    include:
      - main
