# Question 6: Create a VM from PowerShell

## Prerequisites
- Install PowerShell Core
- Install Az Module: `Install-Module Az -Scope CurrentUser -Repository PSGallery -Force`
- Trust script execution: `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser`

---

## Steps

1. Open **PowerShell as Admin**
2. Run: `Connect-AzAccount`
3. Set required variables:
   ```powershell
   $resourceGroup = "DevopsRG"
   $location = "EastUS"
   $vmName = "DevopsVM"
   $cred = Get-Credential

