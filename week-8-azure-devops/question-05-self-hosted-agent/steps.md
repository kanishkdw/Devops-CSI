# Week 8 – Question 5: Create a Self-Hosted Agent (Linux or Windows)

## Step 1: Go to Project Settings
- Open your Azure DevOps project.
- Go to **Project Settings > Agent pools**.

## Step 2: Create a New Agent Pool
- Click **+ Add pool**
- Enter name: `SelfHostedPool`
- Click **Create**

## Step 3: Select OS Type (Linux or Windows)
- Choose either **Linux** or **Windows** tab (based on your machine).
- Click **New agent** > Select OS.

## Step 4: Download and Configure Agent

### For Linux:

```bash
# Download agent package
mkdir myagent && cd myagent
wget https://vstsagentpackage.azureedge.net/agent/3.233.1/vsts-agent-linux-x64-3.233.1.tar.gz
tar zxvf vsts-agent-linux-x64-3.233.1.tar.gz

# Configure agent
./config.sh
