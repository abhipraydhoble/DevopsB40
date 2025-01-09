
## Minikube Installation on AWS EC2

## Step 1: Create an AWS EC2 instance with Ubuntu 22
Instance Size: t2.large with 2 CPUs, 32 GB Storage

## Step 2 : Install Docker
````
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ubuntu
newgrp docker
sudo chmod 777 /var/run/docker.sock
````
## Install kubectl
Download the latest release with the command:
````
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
````

Install kubectl:
````
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
````
Note:
If you do not have root access on the target system, you can still install kubectl to the ~/.local/bin directory:
````
chmod +x kubectl
mkdir -p ~/.local/bin
mv ./kubectl ~/.local/bin/kubectl
````
````
kubectl version --client
````
## Step 4: Install Minikube
````
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
````
````
sudo install minikube-linux-amd64 /usr/local/bin/minikube
````
````
minikube start
````
````
minikube stop
````


--------------------------------------------

## $${\color {blue}\textbf {Ingress On Minikube}}$$
````
https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/
````
