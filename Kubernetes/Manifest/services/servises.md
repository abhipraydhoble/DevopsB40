## In Kubernetes, a Service is a method for exposing a network application that is running as one or more Pods in your cluster.

**Types:**
1. ClusterIP
2. NodePort
3. LoadBalancer
4. ExternalName

### ClusterIp:
- It is default service type which is accessible within cluster 
- Suitable for internat communication between services within cluster

### NodePort:
- The service is accessible externally 
- Exposing application outside the cluster
- It is exposed in range 30000 to 32767

### LoadBalancer:
- Expose the service externally using cloud providers [AWS ELB, GCP's cloud loadbalancer]
- Accesssible from outside the cluster through an external load balancer

### ExternalName:
- maps the services to the external DNS name
  

