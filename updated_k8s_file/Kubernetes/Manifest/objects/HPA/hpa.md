#### HPA
- Stands for the Horizontol Pod Autoscaling 
- It is feature in kubernetes that automatically scales the number of pods in deployment based on CPU utilization and custom metrics
#### Key features:
1. Automatic Scaling: adjusts the pod dynamically based on demand
2. Custom metrics: can scale basedd on application specific metrics using extrnal metrics providers 
- e.g Prometheus

### Types of autoscaling in kubernetes:
1. **HPA[horizontal pod autoscaling]:**handles varying workload by increasing or decreasing numbers of pod
2. **VPA[vertical pod autoscaling]:** Dynamically adjust the resource request and limits {cpu} for existing pod 
3. **cluster autoscaling:** scales number of nodes in kubernetes in cluster by adding or removing the worker nodes on resource demands