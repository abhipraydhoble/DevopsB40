## Manifest files:
- manifest files are the cofiguration files written in YAML or JSON format
 ### key characteristics:
 1. **Declarative configuration:** core concept of kubernetes.Instead of imperative method you define the desired state of system in manifest file
 2. **Resource configuration:** manifest file defines what kubernetes resources should be created or updated included pods, services, deployment
 3. **YAML or JSON:** most commonly used format for manifrest files
 4. **Versioning:** kubernetes manifest files often include versioning information to specify API version
### Common elements in manifest files:
 1. **apiVersion:** 
 - use the following command to see the version of allthe resources within k8's
 ```bash
 kubectl api-resource
 ```
 2. **Kind:**
 - must be string
 3. **metadata:**
 - must be dictionary
 4. **spec:**
 -  must be dictionary
