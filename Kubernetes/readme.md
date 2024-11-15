## Script to install httpd

````
  #/bin/bash
  sudo -i
  yum update -y
  yum install httpd -y
  systemctl start httpd
  systemctl enable httpd

````

### Basic k8s commands

````
kubectl apply -f deployment.yaml
````
````
kubectl get pods
````
Kubernetes is a container orchestration tool
