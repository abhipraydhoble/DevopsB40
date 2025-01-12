# Replication Controller

```yaml
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
```
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

```yaml
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
```

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

```yaml
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
```

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

## Statefulset
- This is useful for managing applications that need persistent storage or a stable, unique network identity.
**statefulset provides**
- Stable, unique network identifiers.
- Stable, persistent storage.
- Ordered, graceful deployment and scaling.
- Ordered, automated rolling updates.




```yaml
apiVersion: apps/v1
kind: StatefulSet
metadata:
  name: redis
spec:
  serviceName: "redis"
  replicas: 3
  selector:
    matchLabels:
      app: redis
  template:
    metadata:
      labels:
        app: redis
    spec:
      containers:
      - name: redis
        image: redis:5.0.5
        ports:
        - containerPort: 6379
          name: redis
  volumeClaimTemplates:
  - metadata:
      name: redis-data
    spec:
      accessModes: [ "ReadWriteOnce" ]
      resources:
        requests:
          storage: 1Gi
```

````
kubectl get sts
````
````
kubectl get pods
````
![image](https://github.com/user-attachments/assets/b7a2ecd8-e758-4a42-a925-18d032243077)




## DaemonSet

```yaml
apiVersion: apps/v1
kind: DaemonSet
metadata:
  name: app1
spec:
  selector:
    matchLabels:
      app: app1
  template:
    metadata:
      labels:
        app: app1
    spec:
      containers:
        - name: app1-container
          image: nginx
          ports:
            - containerPort: 80
```
