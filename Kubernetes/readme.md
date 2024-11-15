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
Kubernetes is a container ***orchestration*** tool

![image](https://github.com/user-attachments/assets/f5ffc83b-a2a7-4180-86d9-f11deb3b4097)
