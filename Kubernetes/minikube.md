
## Minikube Installation on AWS EC2

## Step 1: Create an AWS EC2 instance with Ubuntu 22
Instance Size: t2.large with 2 CPUs, 32 GB Storage

## Step 2 : Install Docker
````
sudo apt update
````
Next, install a few prerequisite packages which let apt use packages over HTTPS:
````
sudo apt install apt-transport-https ca-certificates curl software-properties-common
````
Then add the GPG key for the official Docker repository to your system:
````
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
````
Add the Docker repository to APT sources:
````
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
````
Update your existing list of packages again for the addition to be recognized:
````
sudo apt update
````
Make sure you are about to install from the Docker repo instead of the default Ubuntu repo:
````
apt-cache policy docker-ce
````
Finally, install Docker:
````
sudo apt install docker-ce
````
````
sudo systemctl status docker
````
Executing the Docker Command Without Sudo
````
sudo usermod -aG docker ubuntu
````
````
newgrp docker
````
## Install kubectl
Download the latest release with the command:
````
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
````
Validate the binary 
````
 curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
````
Validate the kubectl binary against the checksum file:
````
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
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
