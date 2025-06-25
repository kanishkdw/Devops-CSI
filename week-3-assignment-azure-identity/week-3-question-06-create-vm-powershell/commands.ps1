# Variables
$resourceGroup = "DevopsRG"
$location = "EastUS"
$vmName = "DevopsVM"
$image = "Win2019Datacenter"
$size = "Standard_B1s"
$adminUsername = "azureuser"
$adminPassword = "SecureP@ssw0rd123!"

# Login to Azure (if not already logged in)
Connect-AzAccount

# Create Resource Group
New-AzResourceGroup -Name $resourceGroup -Location $location

# Create the VM
New-AzVm `
  -ResourceGroupName $resourceGroup `
  -Name $vmName `
  -Location $location `
  -VirtualNetworkName "$vmName-VNet" `
  -SubnetName "$vmName-Subnet" `
  -SecurityGroupName "$vmName-NSG" `
  -PublicIpAddressName "$vmName-IP" `
  -OpenPorts 80,3389 `
  -Image $image `
  -Size $size `
  -Credential (New-Object System.Management.Automation.PSCredential($adminUsername, (ConvertTo-SecureString $adminPassword -AsPlainText -Force)))
