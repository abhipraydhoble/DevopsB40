### Services:
- It is network abstraction object in k8's
- In Kubernetes, a Service is a method for exposing a network application that is running as one or more Pods in your cluster.
- Usually the abstraction that defines logical set of pods and policy by which to access them 
- Each pod contain its own service
**Types:**
1. ClusterIP
2. NodePort
3. LoadBalancer
4. ExternalName

### ClusterIp:
- It is default service type which is accessible within cluster 
- Suitable for internat communication between services within cluster
- Example: database service might use ClusterIp to only be accessed by other services in same cluster

### NodePort:
- The service is accessible externally 
- Exposing application outside the cluster
- It is exposed in range 30000 to 32767
- Example static webepages

### LoadBalancer:
- Expose the service externally using cloud providers [AWS ELB, GCP's cloud loadbalancer]
- Accesssible from outside the cluster through an external load balancer
- Example: 3- tier projects

### ExternalName:
- maps the services to the external DNS name

**Commands:**
```bash
kubectl apply -f node-deploy.yaml
```
```bash
kubectl get deploy
kubectl get svc
kubectl get pod
```
```bash
kubectl get node -o wide
```
![image](https://github.com/user-attachments/assets/2e160b9e-7612-43d7-a560-336301f1a7cf)


![image](https://github.com/user-attachments/assets/65d7c8e9-4188-47ea-8402-2af7d11c0acf)
  

