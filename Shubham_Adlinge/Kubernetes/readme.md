### KUBERNETES [K8S]:
- It is open source **container orchestration** platform that automates deployment, sacling and management of containerized application
- It was developed by Google and now it is maintained by CNCF [cloud native computing foundation]
#### Uses for:
- automating deployment
- scaling
- fault tolerance
- protability
- cost-effectiveness
- highly available
- Rolling update and rollback
#### Container Orchestration:
- It is process of managing scheduling and automating the deployment, networking, of containerized application
### Kubernetes Architecture:
![image](https://github.com/user-attachments/assets/9a5bbd5d-84ca-441f-bba4-ff9a3ca0b297)
- CRI = container runtime interface
#### Master node or Control plane component:
1. Kube-API server:
- It is initial gateway to cluster that listen update or queries via kubectl
- kubectl communicates with API server to infrom what should done with pod
- It works as the gatekeeper.It validation, authentication, authorization
2. Kube Schedular:
- When request of scheduling pod is receives then it is passed on schedular
- It intelligently decides on which node to schedule pod for better efficiency of cluster
3. Kube-Controller manager:
- It is responsible for checking the actual state and the desired state
4. ectd:
- key-value store of cluster
- changes in cluster saved in etcd
- acts as the brain because it tells schedular and other process which resource are available & about cluster state changes
####  Worker Nodes or Data Plane component:
1. CRI [Container Runtime  Interface]:
- container runtime is needed to run application container inside the pod
2. Kube-proxy:
- It is responsible for forwarding request from services to pod
- maintains network rules on nodes
- provide the Ip address to pod
3. kubelets:
- It communicates with conatiner as well as nodes
- kubelet doesn't manage containers which were not created by k8s
- collect the request and send to the api server

#### Some of the platforms to practice kubernetes:
1. minikube:
- It is tool that enables you to run local kubernetes cluster on your machine
- It is commonly used for testing, deployment and leaning process
- It create single-node k8s cluster
2. kubeadm:
- Cli tool used to simplify process of setting up and manageing kubernetes cluster used for on-permises
3.kind:
- kubernetes in Docker: is tool for running k8s cluster locally using docker containers
4.killer coda:
- online practice platform for k8s
- we cannot expose the pod externally in killer coda

