
---

## **Deployment Manifests**

### 1. **Blue Deployment and Service**
```yaml
# blue-deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: app-blue
  labels:
    app: your-app
    version: blue
spec:
  replicas: 2
  selector:
    matchLabels:
      app: your-app
      version: blue
  template:
    metadata:
      labels:
        app: your-app
        version: blue
    spec:
      containers:
      - name: app-blue
        image: abhipraydh96/blue
        ports:
        - containerPort: 80
---
# blue-service.yaml
apiVersion: v1
kind: Service
metadata:
  name: app-blue-service
spec:
  selector:
    app: your-app
    version: blue
  ports:
  - protocol: TCP
    port: 80
    targetPort: 80
  type: ClusterIP
```

### 2. **Green Deployment and Service**
```yaml
# green-deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: app-green
  labels:
    app: your-app
    version: green
spec:
  replicas: 2
  selector:
    matchLabels:
      app: your-app
      version: green
  template:
    metadata:
      labels:
        app: your-app
        version: green
    spec:
      containers:
      - name: app-green
        image: abhipraydh96/green
        ports:
        - containerPort: 80
---
# green-service.yaml
apiVersion: v1
kind: Service
metadata:
  name: app-green-service
spec:
  selector:
    app: your-app
    version: green
  ports:
  - protocol: TCP
    port: 80
    targetPort: 80
  type: ClusterIP
```

### 3. **Ingress**
```yaml
# ingress.yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: app-ingress
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  rules:
  - host: abhidhoble.online  
    http:
      paths:
      - path: /blue
        pathType: Prefix
        backend:
          service:
            name: app-blue-service
            port:
              number: 80
      - path: /green
        pathType: Prefix
        backend:
          service:
            name: app-green-service
            port:
              number: 80

```

---

## **Setup and Deployment**

### 1. **Deploy the Applications**
Apply the Blue and Green deployments and services:
```bash
kubectl apply -f blue-deployment.yaml
kubectl apply -f blue-service.yaml
kubectl apply -f green-deployment.yaml
kubectl apply -f green-service.yaml
```

### 2. **Install NGINX Ingress Controller**
If not already installed, deploy the NGINX Ingress Controller:
```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml
```

### 3. **Deploy the Ingress**
Apply the ingress configuration:
```bash
kubectl apply -f ingress.yaml
```

### 4. **Update `/etc/hosts`**
Add the Ingress Controller’s external IP to your `/etc/hosts` file:
```bash
<INGRESS-EXTERNAL-IP> abhidhoble.online
```
Find the external IP of the Ingress Controller:
```bash
kubectl get svc -n ingress-nginx
```

---

## **Testing**

1. Access the application in your browser or via `curl`:
   - `http:/abhidhoble.online/blue` → Displays the Blue version.
   - `http://abhidhoble.online/green` → Displays the Green version.

2. Verify path-based routing is working correctly.

---

## **Path-Based Routing Table**

| Path        | Service Name         | Backend Deployment |
|-------------|----------------------|--------------------|
| `/blue`     | `app-blue-service`   | `app-blue`         |
| `/green`    | `app-green-service`  | `app-green`        |

---

## **Clean Up**
To delete all resources:
```bash
kubectl delete -f blue-deployment.yaml
kubectl delete -f blue-service.yaml
kubectl delete -f green-deployment.yaml
kubectl delete -f green-service.yaml
kubectl delete -f ingress.yaml
```

---

