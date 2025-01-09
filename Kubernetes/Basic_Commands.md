# KUBERNETES BASIC COMMANDS


## PODS

### Command to create pod [Imperative method]
````
kubectl run pod_name --image= image_name
````
### Expose the pod using kubectl expose [Imperative form to create the service]
````
kubectl expose pod <pod-name> --type=NodePort --port=80
````
### Command to create the pod [declarative method]
````
kubectl apply -f filename.yaml
````
### Command to create the pod
````
kubectl create -f filename.yaml
````
### Difference between the "kubectl apply" and "kubectl create"command
![image](https://github.com/user-attachments/assets/1a98a3b4-deae-4c8e-a22d-5d2b1577e165)
## Check the pod status
````
kubectl get pods
````
### Command to check all object status
````
kubectl get all
````
### Get specific Pod with detailed information 
````
kubectl get pod pod_name -o wide 
````
### Describe a specific pod
````
kubectl describe pod pod_name
````
### Delete a specific pod
````
kubectl delete pod pod_name
````
### Delete all the pods
````
kubectl delete pods --all
````
### View the pod logs
````
kubectl logs pod_name
````
### Execute a command inside pod 
````
kubectl exec -it pod_name --command
````
### Start a shell inside the pod
````
kubectl exec -it pod_name --/bin/bash
````
### List files in directory
````
kubectl exec -it pod_name --ls /app
````
### Delete all the create pods and services,etc
````
kubectl delete all --all
````
### To run all the .yaml files [. is the current path where the .yaml files present]
````
kubectl apply -f .
````
## SERVICES

### List services
````
kubectl get svc
````
### Describe a services
````
kubectl describe service service_name
````
### Delete the service
````
kubectl delete service <service-name>
````





