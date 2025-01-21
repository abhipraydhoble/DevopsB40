## Namespace
- In Kubernetes, namespaces provide a mechanism for isolating groups of resources within a single cluster.
- It is mechnanism for organizing and isolating the resources within cluster
- Usually used to avoid the  name conflict 

### default namespaces:
1. **default:** when no specific namespace is provided
2. **kube-system:** system component such as kubescheduler 
3. **kube-public:** used to store the cluster wide public information,like configuration maps 
4. **kube-node-lease:** managed automatically by kubernetes which helps control plane to determine availability more efficiently
## create namespace using commands
## create the custom namespace
```bash
kubectl create ns <namespace-name>   eg. kubectl create ns dev
```
```bash
kubectl apply -f ns.yaml
```

```bash
kubectl get ns
```
```bash
kubectl apply -f pod.yaml
```
```bash
kubectl get ns
```
**set dev as default ns**
```bash
kubectl config set-context --current  --namespace=dev
```
**check current ns**
```bash
kubectl config view --minify | grep namespace:
```
```bash
kubectl apply -f pod.yaml -n dev
```
```bash
kubectl get pod -n dev
```
