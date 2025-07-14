# Steps – Kubernetes Service Types (ClusterIP, NodePort, LoadBalancer)

## 1. Create Namespace
This step isolates the resources in a dedicated namespace:
```bash
kubectl create namespace k8s-service-demo
2. Create a Deployment
	kubectl create deployment nginx-deployment --image=nginx --replicas=2 -n k8s-service-demo

3. Expose using ClusterIP
	kubectl expose deployment nginx-deployment --port=80 --target-port=80 --type=ClusterIP -n k8s-service-demo

4. Expose using NodePort
kubectl delete service nginx-deployment -n k8s-service-demo

then use
 kubectl expose deployment nginx-deployment --port=80 --target-port=80 --type=NodePort -n k8s-service-demo

5 Expose using LoadBalancer

kubectl delete service nginx-deployment -n k8s-service-demo

kubectl expose deployment nginx-deployment --port=80 --target-port=80 --type=LoadBalancer -n k8s-service-demo

 Result:
Will provision an external IP in cloud environments

On Minikube, run:
minikube tunnel. 
