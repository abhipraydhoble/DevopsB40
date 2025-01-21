#### **Ingress:**
- In Kubernetes (K8s), Ingress is an API object that manages external access to services within the cluster, typically HTTP and HTTPS traffic. 
- It acts as a smart router that defines rules for how traffic from outside the cluster is directed to internal services.
#### Key features:
- Host-Based Routing: Route requests based on the hostname (e.g., example.com).
- Path-Based Routing: Route requests based on the request URI path (e.g., /app1).
- TLS Termination: Secure your traffic using SSL/TLS certificates.
- Load Balancing: Distribute traffic across multiple backend pods for better scalability and availability.
- Custom Rules: Configure advanced rules like headers, redirects, or rewrites depending on the Ingress controller.
#### **Ingress controller:**
- It is responsible for making the ingress resource functional
- without controller the rules defined in ingress resource won't have any effect
### Types:
1. **NGINX ingress controller:**
- Description: The most popular and widely used Ingress controller for Kubernetes.
- It supports advanced features like custom headers, rewrite rules, and rate limiting.
- Use Case: Ideal for most HTTP/HTTPS workloads, supports community extensions and robust features.
#### Installation:
```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml
```
```yml
---
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: traefik-ingress
spec:
  rules:
  - host: traefik.example.com
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: web-service
            port:
              number: 80
...
```
2.**HAProxy ingress controller:**
- Description: A high-performance, secure, and reliable Ingress controller based on HAProxy.
- Use Case: Best for high-performance workloads requiring advanced security and flexibility.
#### Installation:
```bash
kubectl apply -f https://raw.githubusercontent.com/haproxytech/kubernetes-ingress/main/deploy/static/manifest.yaml
```
```yaml
---
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: haproxy-ingress
spec:
  rules:
  - host: haproxy.example.com
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: api-service
            port:
              number: 8080
...
```
3. **Contour ingress controller:**
- Description: A lightweight Ingress controller built on Envoy proxy.
- Use Case: Best for environments focusing on lightweight, high-performance proxies.
#### Installation:
```bash
kubectl apply -f https://projectcontour.io/quickstart/contour.yaml
```
```yaml
---
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: contour-ingress
spec:
  rules:
  - host: contour.example.com
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: my-app
            port:
              number: 8080
...
```
4. AWS ALB Ingress Controller:
- Description: Tailored for AWS environments; uses AWS Application Load Balancers to implement Ingress.
- Use Case: Best suited for AWS-native Kubernetes clusters (EKS).
#### Installation:
```bash
kubectl apply -f https://github.com/kubernetes-sigs/aws-load-balancer-controller/releases/latest/download/v2_6_0_full.yaml
```
```yml
---
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: alb-ingress
  annotations:
    alb.ingress.kubernetes.io/scheme: internet-facing
spec:
  rules:
  - host: alb.example.com
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: backend-service
            port:
              number: 80
...
```
