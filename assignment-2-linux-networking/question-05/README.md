# Assignment 2 – Question 4

## A. VNet and Subnets

- Created VNet: `MyVNet`
- Subnet-1: Used for `LinuxVM` and `WindowsVM`
- Subnet-2: Used for `SqlVM`

## B. Hub and Spoke Architecture

- **Hub VNet**: `ManagementVNet`
- **Spokes**:
  - `ProductionVNet`
  - `TestingVNet`
  - `DevelopmentVNet`

## Resources Created

- VNets: `ManagementVNet`, `ProductionVNet`, `TestingVNet`, `DevelopmentVNet`
- VMs: `MgmtVM`, `ProdVM`, `TestVM`, `DevVM`

## Peering Configured

Each spoke VNet is peered with the hub:

- `DevelopmentVNet` ⇄ `ManagementVNet`
- `ProductionVNet` ⇄ `ManagementVNet`
- `TestingVNet` ⇄ `ManagementVNet`

## Verification

From `MgmtVM` (SSH IP: `52.224.163.61`), successfully pinged:

- `DevVM` (10.4.0.4)
- `ProdVM` (10.2.0.4)
- `TestVM` (10.3.0.4)

✅ All replies confirmed — peering and routing are successful.

---

## Notes

- Used Ubuntu 22.04 LTS
- Azure CLI for VM provisioning and peering
- Used SSH from local terminal for connectivity

