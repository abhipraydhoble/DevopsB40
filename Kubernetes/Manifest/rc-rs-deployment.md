# Replication Controller

````
apiVersion: v1
kind: ReplicationController
metadata:
  name: rc-green

spec:
 replicas: 2
 selector:
  app: green
  
 template:
  metadata:
   name: temp-1
   labels:
    app: green
  spec:
   containers:
    - name: green-container
      image: abhipraydh96/green:latest
      ports:
        - containerPort: 80
````
## apply manifest file to create rc
````
kubectl apply -f rc.yaml
````
## to check rc created or not
````
kubectl get rc
````
## to list pods
````
kubectl get pods
````

## ReplicaSet

````
apiVersion: apps/v1
kind: ReplicaSet
metadata:
  name: rs-green

spec:
 replicas: 4
 selector:
  matchLabels:
   app: green
 template:
  metadata:
   name: temp-1
   labels:
    app: green
  spec:
   containers:
    - name: green-container
      image: abhipraydh96/green:latest
      ports:
        - containerPort: 80
````

## apply manifest file to create rs
````
kubectl apply -f rs.yaml
````
## to check rs created or not
````
kubectl get rs
````
## to list pods
````
kubectl get pods
````

# Deployment

````
apiVersion: apps/v1
kind: Deployment
metadata:
  name: deploy-green

spec:
 replicas: 4
 selector:
  matchLabels:
   app: green
 template:
  metadata:
   name: temp-1
   labels:
    app: green
  spec:
   containers:
    - name: green-container
      image: abhipraydh96/green:latest
      ports:
        - containerPort: 80
````
## apply manifest file to create deployment
````
kubectl apply -f deploy.yaml
````
## to check deployment created or not
````
kubectl get deploy
````
## to list pods
````
kubectl get pods
````
