# Week 7 - Q1: Create a Project with User Groups & Implement Policies (Azure DevOps)

## 🔹 Step 1: Create a New Azure DevOps Project
1. Go to: https://dev.azure.com
2. Sign in using your Azure AD credentials.
3. Click on "New Project".
4. Name the project: `project-user-policy-demo`
5. Select visibility: **Private**
6. Click "Create".

---

## 🔹 Step 2: Create User Groups
1. Go to the created project.
2. Navigate to: **Project Settings** → **Permissions**
3. Click on "New Group"
4. Create the following groups:
   - `Developers`
   - `Testers`
   - `Project Managers`

---

## 🔹 Step 3: Add Users to Each Group
1. Under each group, go to "Members" → click "Add".
2. Enter valid Azure DevOps user emails.
3. Assign:
   - Developers → team members pushing code
   - Testers → QA/test case engineers
   - Project Managers → read-only access and dashboards

---

## 🔹 Step 4: Set Group Permissions
1. For each group, click on the group → "Permissions".
2. Configure the following:
   - **Developers**:
     - Allow "Contribute", "Create Branch", "Manage Builds"
   - **Testers**:
     - Allow "View Builds", "Edit Test Plans"
     - Deny "Contribute"
   - **Project Managers**:
     - Allow "View Builds", "View Repos"
     - Deny "Contribute"

---

## 🔹 Step 5: Configure Branch Policies
1. Navigate to: **Repos → Branches**
2. Click on the 3 dots next to `main` branch → "Branch Policies"
3. Apply:
   - Minimum 2 code reviewers
   - Require linked work items
   - Enforce build validation
   - Limit merge types (Squash / Rebase)
4. Save and exit

 Project setup complete with secure team segregation and policies enforced!
