### Defination:
- work with both equality selector and the set-based selector
- it is similar as replication controller except that they have more options for selector
- upgraded verson of replication controller
- automatically managed by deployment object

### types of selector:
1. Equality based:
- match resources based on key-value equality
- supports by almost all the k8s resources
1. key = value [equal to]
- Matches exactly one label value.
- Example: Select all pods with the label app=nginx.
```bash
 kubectl get pods -l app=nginx
```
2. key != value [not equal to]
- Matches all resources that do not have a specific label value.
- Example: Select all pods where the app label is not equal to nginx.
```bash
kubectl get pods -l app!=nginx
```
e.g matchLabels:
       app: nginx
2. Set-based:
- match resource based on whether key exist within[or not within] set of values 
- works with [in, notin, exist]
1. In: Matches objects where the label key's value is in the specified list.
- Matches if the label value is within a specified list.
- Example: Select all pods where the app label is either nginx or apache.
```bash
kubectl get pods -l app in (nginx, apache)
```
2. NotIn: Matches objects where the label key's value is not in the specified list.
- Matches if the label value is not within a specified list.
- Example: Select all pods where the app label is not nginx or apache.
```bash
kubectl get pods -l app notin (nginx, apache)
```
3. Exists: Matches objects where the label key exists, regardless of its value.
- To list all pods that have the label app, regardless of its value
- means the label must exist, but its value does not matter.
```bash
kubectl get pods -l app
```
