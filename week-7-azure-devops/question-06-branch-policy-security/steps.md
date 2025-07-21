# Steps to Apply Branch Policy and Branch Security in Azure DevOps

## Part A: Apply Branch Policy

1. Go to your Azure DevOps project.
2. Navigate to **Repos > Branches**.
3. Click the **ellipsis (⋮)** next to the `main` branch > **Branch policies**.
4. Under **Pull request policies**, enable:
   - Require a minimum number of reviewers (e.g., 1).
   - Check for linked work items.
   - Check for comment resolution.
   - Limit merge types (e.g., Squash).
5. Optional: Add a build validation policy.
6. Click **Save** to apply the branch policies.

## Part B: Apply Branch Security

1. In the same **Repos > Branches** view, click **ellipsis > Security** on the `main` branch.
2. Add users or groups (e.g., Contributors, Project Administrators).
3. Configure permissions:
   - **Contributors**:
     - Deny: Force push, Delete, Manage permissions.
     - Allow: Read.
   - **Admins**:
     - Allow: All permissions.
4. Click **Save Changes** to finalize security settings.
