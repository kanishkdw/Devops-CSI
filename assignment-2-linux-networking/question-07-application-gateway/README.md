# Question 07 - Azure Application Gateway

## Objective
Set up and test an Azure Application Gateway.

## Steps Performed
1. Created a new resource group (if not already created).
2. Created a virtual network and subnet.
3. Created a static public IP address.
4. Created the Application Gateway using Standard_v2 SKU.
5. Ensured routing rule includes a mandatory priority value (`--priority 100`).

## Script
The script `appgateway-setup.sh` contains the automated commands to deploy the entire Application Gateway infrastructure.

## Resources Used
- [Azure CLI Documentation](https://learn.microsoft.com/en-us/cli/azure/network/application-gateway)
- [YouTube Tutorial](https://www.youtube.com/watch?v=B3O6bXu-NbM)

