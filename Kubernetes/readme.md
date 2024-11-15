## Script to install httpd

````
  #/bin/bash
  sudo -i
  yum update -y
  yum install httpd -y
  systemctl start httpd
  systemctl enable httpd

````

