```Dockerfile
FROM ubuntu
RUN apt-get update -y
RUN apt install nginx -y
COPY index.html /var/www/html/
CMD ["nginx", "-g", "daemon off;"]
```

```Dockerfile
FROM amazonlinux:2023
RUN yum update -y
RUN yum install httpd -y
COPY index.html /var/www/html/
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["httpd"]
```
