## ConfigMap
- Store non-sensitive configuration data, such as environment variables or configuration files, as key-value pairs
````
apiVersion: v1
kind: ConfigMap
metadata:
  name: my-config
data:
  key1: Cloud
  key2: Blitz
  name: dolby
  env: prod
````
## Secrrets
- Store sensitive data, such as passwords, API keys

````
apiVersion: v1
kind: Secret
metadata:
  name: my-secret
type: Opaque  # data encription method
data:
  password: bXlwYXNzd29yZA456cv 
  token: bsgh4223244hbhn344
````
