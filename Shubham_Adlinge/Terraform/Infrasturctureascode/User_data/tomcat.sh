#!/bin/bash
sudo -i
yum update
yum upgrade
yum install unzip
yum install wget 
mkdir /opt/tomcat
cd /opt/tomcat
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.96/bin/apache-tomcat-9.0.96.zip 
curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.96/bin/apache-tomcat-9.0.96.zip
unzip apache-tomcat-9.0.96.zip
cd /opt/tomcat/apache-tomcat-9.0.96/webapps
curl -O https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war
#wget https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war

cd ../lib
curl -O https://s3-us-west-2.amazonaws.com/studentapi-cit/mysql-connector.jar
#wget https://s3-us-west-2.amazonaws.com/studentapi-cit/mysql-connector.jar

cd ../bin
chmod +x catalina.sh

yum install java* -y