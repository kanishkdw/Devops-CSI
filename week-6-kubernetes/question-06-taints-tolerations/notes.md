# Notes – Taints and Tolerations

- **Taints** are applied to nodes to repel pods.
- **Tolerations** allow pods to be scheduled on tainted nodes.

## Taint Format:

- `NoSchedule`: Pods won't be scheduled unless they tolerate the taint.
- `PreferNoSchedule`: Scheduler avoids the node but not strictly.
- `NoExecute`: Evicts existing pods and blocks new ones unless tolerated.

Use tolerations in pod spec to allow placement.
