# Week 7 - Question 4: Apply Branch Filters and Path Filters

## Objective:
Configure branch filters and path filters in Azure DevOps to control when policies are triggered.

---

## Steps:

### 1. Navigate to Azure DevOps Repository:
- Open the Azure DevOps portal.
- Go to your project and navigate to **Repos > Branches**.

---

### 2. Select the Target Branch (e.g., main/master):
- Click on the 3 dots next to the branch.
- Select **Branch policies**.

---

### 3. Apply Branch Filters:
- Under **Build validation** or **Status checks**, click **+ Add**.
- Choose a pipeline or build definition.
- Set the **branch filter** to `refs/heads/main` (or any target branch).
- Save the policy.

---

### 4. Apply Path Filters:
- Still under **Build validation**, click the pencil/edit icon.
- Expand **Path filters**.
- Add specific paths (e.g., `/src/`, `/app/`, `/docs/`).
- Choose whether to include or exclude them.
- Save changes.

---

### 5. Validation:
- Try committing files to different paths and pushing to branches.
- Confirm that builds/policies are only triggered according to configured filters.
