# Week 8 – Question 6: Apply Pre and Post Deployment Approvers in Azure DevOps

##  Step 1: Create a Release Pipeline
1. Go to **Pipelines > Releases**.
2. Click **New pipeline**.
3. Select **Empty Job**.
4. Name the pipeline (e.g., `Approval Release Pipeline`).

##  Step 2: Add an Artifact
1. Click **Add an artifact**.
2. Select your build pipeline as the source (or any artifact).
3. Click **Add**.

##  Step 3: Configure Stages
1. Click on **Stage 1**.
2. Rename to `Dev` (or anything you like).
3. Click on **Tasks**, and add a simple deployment task (optional).

##  Step 4: Set Pre-deployment Approvers
1. Click the lightning ⚡ icon on the left of the stage box.
2. Under **Pre-deployment conditions**, click **Pre-deployment approvals**.
3. Toggle **Enabled**, and add your user/email as approver.
4. Click **Save**.

##  Step 5: Set Post-deployment Approvers (Optional)
1. Scroll to **Post-deployment conditions** (on the right side of the stage box).
2. Toggle **Post-deployment approvals** ON.
3. Add your email/user again or a teammate.
4. Click **Save**.

##  Step 6: Run the Pipeline
1. Click **Create Release** → **Select Stage** → **Create**.
2. The pipeline will pause at the **pre-deployment approval** step.
3. Approve it manually.
4. Once the stage is complete, it will pause again if **post-deployment** is set.

