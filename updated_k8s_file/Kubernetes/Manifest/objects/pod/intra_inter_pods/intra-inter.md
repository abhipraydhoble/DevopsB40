### intra pod:
- IT refers the communication between containers within the same pod 
- uses: to share the files and the data easily
- e.g: main container and the side car container

### inter pod:
- refers to the communication between two different pods running on same node or in same cluster
- uses commonly used in microservices architecture
- e.g 3-teir project 

### diagram:
![alt text](<Screenshot 2025-01-20 103825-1.png>)




```bash
kubectl apply -f green-pod.yaml
```

```bash
kubectl apply -f blue-pod.yaml
```

```bash
kubectl get pods -o wide
```

```bash
kubectl exec -it green-pod -- curl 10.244.0.11:80
```

```bash
kubectl exec -it blue-pod -- curl 10.244.0.10:80
```
