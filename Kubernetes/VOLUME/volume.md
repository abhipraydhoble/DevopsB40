## k8s volume:

### 1. emptyDir
- emptyDir volume is a temporary volume and it is  initially empty.
- When a Pod is removed from a node for any reason, the data in the emptyDir is deleted permanently.
````
apiVersion: v1
kind: Pod
metadata:
  name: emptydir-pod
spec:
  containers:
  - name: my-container
    image: nginx
    volumeMounts:
    - mountPath: /usr/share/nginx/html
      name: my-emptydir
  volumes:
  - name: my-emptydir
    emptyDir: {}

````


# hostpath
- A hostPath volume mounts a file or directory from the host node's filesystem into your Pod

````
apiVersion: v1
kind: Pod
metadata:
  name: hostpath-pod
spec:
  containers:
  - name: my-container
    image: nginx
    volumeMounts:
    - mountPath: /usr/share/nginx/html
      name: my-hostpath
  volumes:
  - name: my-hostpath
    hostPath:
      path: /data/nginx
      type: DirectoryOrCreate

````
