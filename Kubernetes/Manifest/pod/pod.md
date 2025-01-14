### POD
- It is the smallest fundamental component of kubernetes architecture
- Pod are the emphermeral[ short-lived, temporary]
- It is workload resource
- It contain single or multiple containers
### Concept of main container and side container
  1. Main container:
     - It is primary container in pod
     - It is responsible for handling core functionality of application
  3.  Sidecar container:
     - Container that run alongside the main container
     - It often handles the task like logging, mointoring, data transforming
### example:
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx-fluentd
spec:
  containers:
    # Main Container: Nginx
    - name: nginx
      image: nginx:latest
      volumeMounts:
        - name: shared-logs
          mountPath: /var/log/nginx
      ports:
        - containerPort: 80

    # Sidecar Container: Fluentd
    - name: fluentd
      image: fluent/fluentd:latest
      volumeMounts:
        - name: shared-logs
          mountPath: /var/log/nginx

  # Shared Volume for Log Communication
  volumes:
    - name: shared-logs
      emptyDir: {}
```
