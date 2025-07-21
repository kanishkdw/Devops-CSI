# Notes – Azure DevOps Gates

## What Are Pipeline Gates?
Gates are automated checks that run before a deployment stage starts.
Used in Release Pipelines, especially in Production environments.

## Common Use Cases
- Wait for work item approval.
- REST API health checks.
- Delay deployment until monitoring alerts are resolved.

## Benefits
- Automated pre-validation.
- Better control before critical deployments.
- Integrates with external systems (via REST APIs or queries).

## Key Settings
- **Sampling Interval**: How frequently the gate condition is checked.
- **Timeout**: Max time Azure DevOps waits for gate approval.
- **Minimum Success Duration**: Gate must remain successful for this time.

## Gate Types
- Invoke REST API
- Azure Function
- Azure Monitor Alerts
- Query Work Items
- Manual Approval
