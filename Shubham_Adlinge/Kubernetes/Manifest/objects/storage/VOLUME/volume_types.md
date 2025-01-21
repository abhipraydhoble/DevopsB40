## k8s volume:
### 1. emptyDir
- emptyDir volume is a temporary volume and it is  initially empty.
- When a Pod is removed from a node for any reason, the data in the emptyDir is deleted permanently.
- If pod is deleted then the data within pod get lost
```yaml
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

```


# hostpath
- A hostPath volume mounts a file or directory from the host node's filesystem into your 
- It is a volume type which uses a path on local node filesystem
- hostPath types:
1. Directory: specified path doesn't, then it **won't** be created
2. DirectoryOrCreate: If path doesn't exist, **k8s will create it** 
3. File: path must be file, If not exist then,k8s **won't** create it
4. FileOrCreate:path must be file, If not exist then,**k8s  create it**

```yaml
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

```
