````
kubectl apply -f green-pod.yaml
````

````
kubectl apply -f blue-pod.yaml
````

````
kubectl get pods -o wide
````

````
kubectl exec -it green-pod -- curl 10.244.0.11:80
````

````
kubectl exec -it blue-pod -- curl 10.244.0.10:80
````
