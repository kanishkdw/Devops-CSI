# Week 6 - Kubernetes: ReplicaSet vs ReplicationController vs Deployment

##  Concepts

### 1. **ReplicationController**
- Ensures a specified number of pod replicas are running at any time.
- Legacy feature, mostly replaced by ReplicaSet.

### 2. **ReplicaSet**
- Newer and more powerful.
- Supports label selectors with set-based requirements.
- Used indirectly via Deployments.

### 3. **Deployment**
- Manages ReplicaSets.
- Allows rolling updates and rollbacks.
- Most widely used in production.

##  Use Deployment for:
- Rolling updates and rollback
- Declarative updates
- Production apps

##  Avoid ReplicationController unless maintaining legacy workloads.
