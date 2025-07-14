# Enable metrics server (already enabled in AKS usually)
kubectl get deployment metrics-server -n kube-system

# Apply deployment
kubectl apply -f deployment.yaml

# Enable autoscaling
kubectl autoscale deployment nginx-deployment --cpu-percent=50 --min=1 --max=5

# Check HPA status
kubectl get hpa

# Generate load to trigger scaling
kubectl run -i --tty load-generator --image=busybox /bin/sh
# Inside the pod
while true; do wget -q -O- http://nginx-service; done
