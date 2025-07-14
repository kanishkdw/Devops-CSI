# Steps - Deploy ReplicaSet, ReplicationController, and Deployment

1. Create a ReplicationController using `replicationcontroller.yaml`
   ```bash
   kubectl apply -f replicationcontroller.yaml


2. Create a ReplicaSet using replicaset.yaml

	kubectl apply -f replicaset.yaml
3. Create a Deployment using deployment.yaml
kubectl apply -f deployment.yaml

4. view resources
kubectl get all

5. Delete

kubectl delete -f replicationcontroller.yaml
kubectl delete -f replicaset.yaml
kubectl delete -f deployment.yaml

