# Notes: Triggers in Build and Release Pipelines

## 🔄 CI (Continuous Integration) Triggers
- Automatically start a build on new commits.
- Improves developer productivity.
- Detects issues early in the development cycle.

## 🕒 Scheduled Triggers
- Run pipelines on a schedule, e.g., nightly builds.
- Useful for regular testing, deployments, or backups.

## 🚀 CD (Continuous Deployment) Triggers
- Automate deployments after successful builds.
- Reduces manual effort and risk of human error.
- Ensures fast and reliable delivery.

## YAML Example: Full CI + Scheduled Build

```yaml
trigger:
  branches:
    include:
      - main

schedules:
- cron: "0 3 * * *"
  displayName: Daily 3AM Build
  branches:
    include:
      - main
  always: true

