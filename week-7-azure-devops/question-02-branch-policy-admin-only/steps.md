# Week 7 - Q2: Restrict Master Branch Access to Project Admin Only (Azure DevOps)

## 🔹 Step 1: Navigate to Project Repos
1. Go to: https://dev.azure.com
2. Open your project (e.g., `project-user-policy-demo`)
3. Go to: Repos → Branches

---

## 🔹 Step 2: Apply Policy to `main` (or `master`) Branch
1. Click the 3 dots (⋯) beside the `main` branch → Select "Branch policies"

---

## 🔹 Step 3: Configure Required Settings
1. **Minimum number of reviewers** → Set to `1` or `2`
2. **Check for linked work items** → Enable
3. **Build validation** → Optional if pipeline is connected

---

## 🔹 Step 4: Set Required Reviewers to Admin Only
1. Scroll to **Automatically include reviewers**
2. Add the `Project Administrators` group
3. Remove all other groups (including Contributors)

---

## 🔹 Step 5: Block Direct Pushes
1. Enable the setting: **"Require a pull request to merge"**
2. Enable: **"Block direct pushes"**
3. Save changes

 Result: Only Project Admins can merge to `main`, contributors must raise PRs that will be blocked unless approved by admin.
