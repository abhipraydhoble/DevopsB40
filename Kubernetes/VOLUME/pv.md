## 1. Persistent Volume 
- PV is like a permanent storage which have a lifecycle independent  of any individual Pod.
````
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-example
spec:
  capacity:
    storage: 5Gi
  volumeMode: Filesystem
  accessModes:
    - ReadWriteOnce
  persistentVolumeReclaimPolicy: Retain
  storageClassName: manual
  hostPath:
    path: "/mnt/data"
````
## PVC
- A PersistentVolumeClaim (PVC) is a request for storage by a user.

  
````
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: pvc-example
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 5Gi
  storageClassName: manual
````


````
apiVersion: v1
kind: Pod
metadata:
  name: mypod
spec:
  containers:
    - name: myfrontend
      image: nginx
      volumeMounts:
      - mountPath: "/var/www/html"
        name: pv-example
  volumes:
    - name: pv-example
      persistentVolumeClaim:
        claimName: pvc-example
````
