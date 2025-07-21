# Week 7 – Question 9: Apply Branch Security – Allow PRs Only

## Objective
Ensure that **contributors** can only create **Pull Requests** to merge into the `main`/`master` branch but **cannot push directly**.

---

## Steps

### 1. Go to Azure DevOps > Project Settings > Repositories

### 2. Select your repository

### 3. Click on the **Branches** tab

### 4. Click on the `...` menu for the `main` or `master` branch and select **Branch security**

### 5. Add Contributors group (if not present)

### 6. Set Permissions for Contributors:
- **Contribute** → Deny
- **Create branch** → Allow
- **Create tag** → Allow
- **Contribute to pull requests** → Allow
- **Force push** → Deny
- **Read** → Allow
- **Bypass policies when pushing** → Deny

### 7. Save changes

### 8. Test by logging in as contributor and trying to push (it should fail). Then create a Pull Request (it should work).
