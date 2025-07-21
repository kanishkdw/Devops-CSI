Enable Report build status on the pipeline
Go to:

Project Settings → Repositories → [DevOps/CSI]

Select Policies tab > Enable:

Report build status

Require linked work items (optional for enforcement)

How to Link Work Items to a Commit
In commit message: include #ID of the work item (e.g., Fix bug #42)

When creating a Pull Request: manually link work items in PR description

Validation
Run a pipeline → Go to Azure Boards → See pipeline linked in work item

Click on the build to verify the status is reported back


# Notes – Using Work Items in Pipelines

## Why link work items?
- Provides traceability from code → commit → pipeline → deployment
- Helps project managers track progress
- Useful in auditing and release management

---

## Methods to Link
- In commit message using `#ID`
- In Pull Request under "Work Items"
- Auto-linked from builds when enabled

---

## Example Commit Message
```bash
git commit -m "Fix: Corrected timeout issue in checkout job. Resolves #102"
