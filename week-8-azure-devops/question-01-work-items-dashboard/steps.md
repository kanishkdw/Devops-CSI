# Week 8 – Question 1: Configure Dashboard and Queries for Work Items

## Step 1: Open Azure DevOps
- Visit [https://dev.azure.com](https://dev.azure.com)
- Sign in with your Microsoft account

## Step 2: Create a Project
- Click on “New Project”
- Project Name: `devops-csi-tracker`
- Visibility: Private or Public
- Click “Create”

## Step 3: Add Work Items
- In the left panel, go to **Boards > Work Items**
- Click “+ New Work Item” > Select type: `Bug`, `Task`, or `User Story`
- Enter Title, Description
- Assign it to yourself
- Click “Save & Close”
- Repeat to create at least 4–5 work items of mixed types

## Step 4: Create a Query
- Navigate to **Boards > Queries**
- Click “New Query”
- Add the following filters:
  - `Work Item Type` = Bug
  - `State` = Active
  - `Assigned To` = @Me
- Click “Run Query” to view results
- Click “Save As” > Name it: `My Active Bugs`

## Step 5: Create a Dashboard
- Go to **Overview > Dashboards**
- Click **New Dashboard**
  - Name: `CSI Work Summary`
  - Select team: `Default team`
  - Visibility: Team members
- Click “Create”

## Step 6: Add Widgets to Dashboard
- Open your new dashboard
- Click **Edit**
- Add widgets:
  - **Query Tile**: Select `My Active Bugs`
  - **Chart Widget**: Create Pie or Bar chart from your saved query
  - **Assigned to Me**: Shows work items assigned to you
- Arrange widgets, then click **Done Editing**
