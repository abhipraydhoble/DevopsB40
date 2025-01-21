# KUBERNETES BASIC COMMANDS

### Comand to check the nodes in k8's cluster
```bash
kubectl get nodes
```
#### TO check the versions of all the resoureces in k8's
```bash
kubectl api-version
```

## PODS
### Command to create pod [Imperative method]
```bash
kubectl run pod_name --image= image_name
```
### Expose the pod using kubectl expose [Imperative form to create the service]
```bash
kubectl expose pod <pod-name> --type=NodePort --port=80
```
### Command to create the pod [declarative method]
```bash
kubectl apply -f filename.yaml
```
### Command to create the pod
```bash
kubectl create -f filename.yaml
```
### Difference between the "kubectl apply" and "kubectl create"command
![image](https://github.com/user-attachments/assets/1a98a3b4-deae-4c8e-a22d-5d2b1577e165)
## Check the pod status
```bash
kubectl get pods
```
### Command to check all object status
```bash
kubectl get all
```
### Get specific Pod with detailed information 
```bash
kubectl get pod pod_name -o wide 
```
### Describe a specific pod
```bash
kubectl describe pod pod_name
```
### Delete a specific pod
```bash
kubectl delete pod pod_name
```
### Delete all the pods
```bash
kubectl delete pods --all
```
### View the pod logs
```bash
kubectl logs pod_name
```
### Execute a command inside pod 
```bash
kubectl exec -it pod_name --command
```
### Start a shell inside the pod
```bash
kubectl exec -it pod_name --/bin/bash
```
### List files in directory
```bash
kubectl exec -it pod_name --ls /app
```
### Delete all the create pods and services,etc
```bash
kubectl delete all --all
```
### To run all the .yaml files [. is the current path where the .yaml files present]
```bash
kubectl apply -f .
```
## SERVICES

### List services
```bash
kubectl get svc
```
### Describe a services
```bash
kubectl describe service service_name
```
### Delete the service
```bash
kubectl delete service <service-name>
```





