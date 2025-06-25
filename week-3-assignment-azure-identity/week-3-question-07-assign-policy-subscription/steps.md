# Week 3 - Question 07: Configure Backup and Alerts for VM

## A. VM Backup and Alert Setup

### Step 1: Create a Recovery Services Vault
- Azure Portal → Recovery Services Vault → + Create
- Select subscription, resource group, region
- Click Review + Create → Create

### Step 2: Enable Backup for a VM
- Open Vault → Backup → Azure → Azure Virtual Machine
- Select discovered VM → Apply a policy:
  - Daily backup @ 3:00 AM
  - Retention: 30 days (or desired)

### Step 3: Setup Alert for CPU > 80%
- Azure Portal → Monitor → Alerts → + New Alert Rule
- Scope: Select VM
- Condition:
  - Signal: `Percentage CPU`
  - Threshold: > 80
- Action Group: Email alert
- Review + Create

## B. Backup Center Provisioning

- Azure Portal → Backup Center → + Backup
- Resource: Azure VM
- Vault: Select the one created earlier
- Assign same policy
