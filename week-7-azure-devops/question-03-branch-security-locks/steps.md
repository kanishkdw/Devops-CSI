# Week 7 - Question 3: Apply Branch Security and Locks

## Objective
Apply branch security settings and locks in Azure Repos to restrict unauthorized changes and enforce controlled workflows.

## Steps

1. **Go to Azure DevOps Project**
   - Open your Azure DevOps project in the browser.

2. **Navigate to Repos > Branches**
   - From the left menu, go to `Repos` → `Branches`.

3. **Select the Master/Main Branch**
   - Click the 3-dot menu (⋮) next to the `main` or `master` branch.

4. **Apply Branch Security**
   - Click **Branch security**.
   - For "Contributors", set the following:
     - Uncheck `Contribute`.
     - Uncheck `Create branch`.
     - Deny `Force push`.
   - For "Project Administrators":
     - Leave all permissions enabled.

5. **Apply Branch Locks**
   - From the same branch menu, click **Lock branch**.
   - This prevents direct pushes to the branch, ensuring changes go through PRs only.

6. **Verify Settings**
   - Try pushing changes to `main` from a Contributor account to ensure permissions are blocked.
   - Confirm Project Admins can still manage the branch.

7. **(Optional) Enforce Reviewers**
   - You can also go to Branch Policies → Add `Required Reviewers`, `Build Validation`, etc.

