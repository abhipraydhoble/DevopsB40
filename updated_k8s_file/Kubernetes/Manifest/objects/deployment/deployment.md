### Deployment:
- Stateless application manager
- High-level object that helps you to manage pods using replicset
- Provides rolling update and rollback
#### Features:
1. **Declarative Updates:**specify the desired state of your application and kubernetes
2. **Rolling Update:** update are applied gradually
3. **Rollback:**easily revert to pervious stable state if update fails
4. **Scaling:**increases and decreases number of pods
5. **Self-healing:**pod crashes,k8's auto creates it
### Rolling update and Rollback
1. Rolling Update:
- It allows you to update deployment incrementally without taking entire application offline
- Instead of updating all pod,k8's update one pod at time
### Problem Statement: workflow
- deployment named my-app running at version 1.0 of application.You want to update the version 2.0 due to made changes in application
### manual update
```yaml
##version 1.0
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: rolling-update-example
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  strategy:
    type: RollingUpdate
    rollingUpdate:
      maxUnavailable: 1
      maxSurge: 1
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
        - name: nginx
          image: nginx:1.0
          ports:
            - containerPort: 80
...
```
- Apply the manifest file by:
```bash
kubectl apply -f version1.0.yaml
```
```bash
kubectl get pods
```
```bash
kubectl get deployment
```
- Update the version from 1.0 to 2.0
```yaml
---
##version 2.0
apiVersion: apps/v1
kind: Deployment
metadata:
  name: rolling-update-example
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  strategy:
    type: RollingUpdate
    rollingUpdate:
      maxUnavailable: 1
      maxSurge: 1
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
        - name: nginx
          image: nginx:2.0
          ports:
            - containerPort: 80
...
```
- Apply the manifest file for new version
```bash
kubectl apply -f version2.0.yml
```
- Check the rolling update status:
```bash
kubectl rollout status deployment/rolling-update-example
```
#### Drawbacks of manual rolling update:
- human error 
- inconistent rollout 
- no automatic rollout
- longer troubleshooting

- **NOTE:after you apply the version2.0.yml file k8's will remove the pods with version1.0**
### using the set command:
```bash
kubectl set image deployment/rolling-update-example container_name = version2.0 --record = true
```
- mointor the status:
```bash
kubectl rollout status deployment/name_deployment
```
2. Rollback:
- It allows you to move back to pervious version of deployment if something goes wrong with updated version
### manual rollback
- edit the manifest file with
```bash
kubectl edit deployment name_deployment
```
- modify this part in above manifest file 
```yaml
spec:
  containers:
  - name: nginx
    image:1.0 ### changing the version from 2.0 to 1.0
```
- save and exit editor after above changes are done
- monitor rollout:
```bash
kubectl rollout status deployment rolling-update-example
```
#### Drawbacks of manual rollback 
- No revision tracking
- Human error
- inconsistency
### Rollback using the built in command:
- first check the revision history of deployment
```bash
kubectl rollout history deployment/rolling-update-example
```
- suppose we need to rollback to particular revision
```bash
kubectl rollout undo deployment/rolling-update-example --to-revision= 1
```
- rollback to pervious version 
```bash
kubectl rollout undo deployment/rolling-update-example
```