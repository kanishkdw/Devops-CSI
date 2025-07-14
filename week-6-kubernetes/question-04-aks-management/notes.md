# Notes – Azure Kubernetes Service (AKS)

- AKS is a managed Kubernetes service offered by Azure.
- Handles automatic upgrades, patching, and scaling.
- Integrated with Azure Monitor for metrics and logs.

### Benefits of AKS:
- Simplifies Kubernetes setup.
- Integrated identity and access controls.
- Cost-effective and scalable.

### Key CLI Tools:
- `az aks get-credentials` → connects local kubeconfig to AKS
- `kubectl` → standard Kubernetes CLI
- `az aks scale` → dynamically scales node count
- `az aks upgrade` → safely upgrades cluster version

