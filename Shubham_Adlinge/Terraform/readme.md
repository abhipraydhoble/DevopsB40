## Steps to download the terraform on ubuntu:
1. update the system and to install gnupg (GNU Privacy Guard)open-source software that allows you to encrypt and sign data and communications. 
```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
```
2. Install the HashiCorp GPG key.[A GPG key (GNU Privacy Guard key) is a cryptographic key used for encryption, decryption, and signing operations]
```bash
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
```
3. Verify the key's fingerprint.
```bash
gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint
```
4. Add the official HashiCorp repository to your system.
```bash
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
```
5. update and install the terraform
```bash
sudo apt update
sudo apt-get install terraform
```
6. check the version of terraform
```bash
terraform --version
```

## Steps to install AWS CLI
1. download the unzip command :
```bash
sudo apt install unzip
```
2. To install the AWS CLI, run the following commands.
```bash
sudo apt install unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```
3. check the version
```bash
aws --version
```
