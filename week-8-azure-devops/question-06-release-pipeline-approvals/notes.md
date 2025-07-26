# Pre and Post Deployment Approvals in Azure DevOps

## What Are They?
Manual approval gates in a release pipeline that require a user or group to approve before or after a stage runs.

## Benefits
- Adds governance and safety to critical deployments.
- Useful for production environments or sensitive changes.

## Where They Apply
- Release Pipelines (UI-based)
- Not directly supported in classic YAML pipelines (requires workarounds).

## Types
- **Pre-deployment approvals**: Before a stage starts.
- **Post-deployment approvals**: After a stage completes but before continuing.

## Best Practices
- Use approvers from your team or environment owners.
- Enable email notifications for quick action.
- Combine with branch policies and environments for secure CI/CD.
