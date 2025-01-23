### $${\color{blue}\textbf{What is IAC}}$$

- Infrastructure as Code (IaC) means managing infrastructure using code instead of doing it manually.
- It saves time, reduces errors, and makes it easier for developers to focus on their work.
- Companies use IaC to save money, lower risks, and respond faster to new opportunities

### $${\color{blue}\textbf{How Infrastructure As A Code (IAC) Works}}$$

- IaC with Terraform and AWS means using code to manage AWS resources (like EC2, S3, etc.) instead of doing it manually.
- You write configuration files, store them in version control, and use Terraform to automatically create and manage your infrastructure.
- It makes your setup repeatable, consistent, and error-free.



![image](https://github.com/user-attachments/assets/3ce660b5-801c-422d-937f-5db81370a094)


### $${\color{blue}\textbf{How does Terraform work?}}$$

---

- Terraform creates and manages resources on cloud platforms and other services through their application programming interfaces (APIs).
- Providers enable Terraform to work with virtually any platform or service with an accessible API.
- HashiCorp and the Terraform community have already written thousands of providers to manage many different types of resources and services.
-  You can find all publicly available providers on the Terraform Registry, including Amazon Web Services (AWS), Azure, Google Cloud Platform (GCP), Kubernetes, 
   and many more

---
### Terraform vs. Ansible:

| Feature             | Terraform                            | Ansible                                |
|---------------------|--------------------------------------|----------------------------------------|
| **Purpose**          | Infrastructure provisioning          | Configuration management              |
| **State Management** | Uses state files to track changes    | No state management                   |
| **Language**         | HCL (HashiCorp Configuration Language) | YAML (Yet Another Markup Language)     |
| **Resource Management** | Manages infrastructure resources   | Manages software and configurations   |
| **Idempotency**      | Idempotent (does not create duplicates) | Idempotent (ensures consistent state) |
| **Use Case**         | Cloud resources (EC2, S3, etc.)      | Server configuration, apps, and services |

---

### Terraform vs. CloudFormation:

| Feature             | Terraform                            | CloudFormation                        |
|---------------------|--------------------------------------|---------------------------------------|
| **Provider Support** | Multi-cloud (AWS, Azure, GCP, etc.)  | AWS-only                              |
| **Language**         | HCL (HashiCorp Configuration Language) | JSON or YAML                          |
| **State Management** | Yes, uses state files                | No, manages state internally          |
| **Modularization**   | Supports modules                     | Limited modularization                |
| **Community**        | Strong open-source community         | AWS-specific, closed-source           |
| **Ease of Use**      | User-friendly, flexible              | AWS-centric, steeper learning curve   |


---


![image](https://github.com/user-attachments/assets/83c85698-f5b9-43b7-80fe-85ecb229cd8a)


