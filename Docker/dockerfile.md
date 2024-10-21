```Dockerfile
FROM ubuntu
RUN apt-get update -y
RUN apt install nginx -y
COPY index.html /var/www/html/
CMD ["nginx", "-g", "daemon off;"]
```
