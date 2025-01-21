FROM ubuntu:20.04

USER root

RUN apt update -y

RUN apt install default-jdk -y

WORKDIR /opt/tomcat/

ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.98/bin/apache-tomcat-9.0.98.tar.gz /opt/tomcat/

RUN tar -xvzf apache-tomcat-9.0.98.tar.gz -C /opt/tomcat/

ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war /opt/tomcat/apache-tomcat-9.0.98/webapps/

ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/mysql-connector.jar /opt/tomcat/apache-tomcat-9.0.98/lib/

COPY context.xml ./apache-tomcat-9.0.98/conf/context.xml

CMD ["apache-tomcat-9.0.98/bin/catalina.sh","run"]
