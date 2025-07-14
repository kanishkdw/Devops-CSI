# Notes – Kubernetes PV & PVC

- **PV** is a piece of storage in the cluster.
- **PVC** is a request for storage by a user.
- **Access Modes**:
  - ReadWriteOnce – mounted by a single node
  - ReadOnlyMany – multiple nodes read-only
  - ReadWriteMany – multiple nodes read-write
- Storage classes automate dynamic provisioning.
- `hostPath` is for testing only; not recommended for production.
