In the same YAML pipeline, add a scheduled trigger block:

schedules:
- cron: "0 3 * * *"
  displayName: Daily 3AM build
  branches:
    include:
      - main
  always: true


This schedules the pipeline to run daily at 3:00 AM UTC.

C. Configure Release Trigger (CD Trigger)
Navigate to Pipelines > Releases.

Select your release pipeline or create a new one.

Click the lightning bolt ⚡ on the artifact.

Enable Continuous Deployment Trigger.

Select the build artifact and branch to monitor for changes.

Save the release pipeline.

Now a successful build will automatically trigger a release.

