# What is IAC

Infrastructure as code (IaC) is the ability to provision and support your computing infrastructure using code instead of manual processes and settings. Any application environment requires many infrastructure components like operating systems, database connections, and storage. Developers have to regularly set up, update, and maintain the infrastructure to develop, test, and deploy applications. 

Manual infrastructure management is time-consuming and prone to error—especially when you manage applications at scale. Infrastructure as code lets you define your infrastructure's desired state without including all the steps to get to that state. It automates infrastructure management so developers can focus on building and improving applications instead of managing environments. Organizations use infrastructure as code to control costs, reduce risks, and respond with speed to new business opportunities.

**How Infrastructure As A Code (IAC) Works**

Much like software code describes an application and how it works, infrastructure as code (IaC) describes a system architecture and how it works. An infrastructure architecture contains resources such as servers, networking, operating systems, and storage. IaC controls virtualized resources by treating configuration files like source code files. You can use it to manage infrastructure in a codified, repeatable way. 

IaC configuration management tools use different language specifications. You can develop IaC similar to application code in Python or Java. You also write the IaC in an integrated development environment (IDE) with built-in error checking. And you can maintain it under source control with commits at each code change. IaC files are included as part of the wider codebase.

Approaches to IaC

There are two different approaches to infrastructure as code.

**Declarative**

Declarative IaC allows a developer to describe resources and settings that make up the end state of a desired system. The IaC solution then creates this system from the infrastructure code. This makes declarative IaC simple to use, as long as the developer knows which components and settings they need to run their application.

**Imperative**

Imperative IaC allows a developer to describe all the steps to set up the resources and get to the desired system and running state. While it isn’t as simple to write imperative IaC as declarative IaC, the imperative approach becomes necessary in complex infrastructure deployments. This is especially true when the order of events is critical.

![image](https://github.com/user-attachments/assets/3ce660b5-801c-422d-937f-5db81370a094)


**What are the benefits of infrastructure as code?**
---
Automation is a key goal across any computing environment. Infrastructure as code (IaC) is used for infrastructure automation to create environments. The most common use of IaC is in software development to build, test, and deploy applications.

Traditionally, system administrators used a combination of scripts and manual processes to set up infrastructure environments. The process was complex and time-consuming. Today, you can use IaC to automatically set up your environment within minutes and manage it more efficiently. We give some benefits next.

**Easily duplicate an environment**
---
The same environment can be deployed on a different system in another location using the same IaC, as long as the infrastructure resources are available.

For example, imagine a business’s regional branch has IaC to describe the whole branch’s enterprise environment, including servers, networking, and custom configurations. If the business opened another regional branch, they could use IaC to duplicate the exact same environment and quickly make the branch online and operational. IaC removes the repetitive manual steps and checklists that were needed in the past.

**Reduce configuration errors**
---
Manual configuration is error-prone due to human involvement. People make mistakes. Or there could be configuration drift due to changes in one setup (like a developer environment) that was missed in another setup (like a test environment).

In contrast, IaC reduces errors and streamlines error checking. If there are errors due to IaC code updates, you can quickly fix the situation by rolling the codebase to the last known stable configuration files. It’s also possible to roll back environments using previous versions of IaC configuration files for other reasons, such as the deployment of older application versions.

**Iterate on best-practice environments**
---
Source control allows software developers to easily build and branch on environments. For instance, imagine that an application grew to include an optional machine learning module. A developer could branch the application’s IaC to initiate, use, and stop a high-performance Amazon Elastic Compute Cloud (Amazon EC2) Trn1 instance. They can set the deployment region as dependent on the region of the application deployment.


![image](https://github.com/user-attachments/assets/3e1bb3a7-3c91-4b28-be03-acec2e5da4d1)



**What is the role of IaC in DevOps?**
---
DevOps is the process of improving collaboration between software development and IT operations teams. It aims to shorten the application development lifecycle and provide continuous delivery of high-quality software. DevOps teams integrate operations activities with developer tools and code commits, so applications can have extremely rapid release cycles.

A key goal of DevOps is to automate infrastructure tasks across the development process. You can integrate infrastructure as code (IaC) into continuous integration and continuous deployment (CI/CD) pipelines. This way, when software goes through its build and release process, the necessary infrastructure changes can be made in tandem.

**DevOps teams use infrastructure as code for many purposes:**

Quickly set up complete environments, from development to production

Help ensure consistently reproducible configurations between environments

Integrate seamlessly with cloud providers and efficiently scale infrastructure resources up or down based on demand

IaC provides a common language for both developers and operations. Changes can be reviewed in a transparent manner, which fosters better collaboration in a DevOps environment.

# What is Terraform

Terraform is an infrastructure as code tool that lets you build, change, and version cloud and on-prem resources safely and efficiently.

HashiCorp Terraform is an infrastructure as code tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share. You can then use a consistent workflow to provision and manage all of your infrastructure throughout its lifecycle. Terraform can manage low-level components like compute, storage, and networking resources, as well as high-level components like DNS entries and SaaS features.

**How does Terraform work?**
---
Terraform creates and manages resources on cloud platforms and other services through their application programming interfaces (APIs). Providers enable Terraform to work with virtually any platform or service with an accessible API.
HashiCorp and the Terraform community have already written thousands of providers to manage many different types of resources and services. You can find all publicly available providers on the Terraform Registry, including Amazon Web Services (AWS), Azure, Google Cloud Platform (GCP), Kubernetes, Helm, GitHub, Splunk, DataDog, and many more

![image](https://github.com/user-attachments/assets/502bc56f-9e15-47af-ac41-18d99f09b045)


**The core Terraform workflow consists of three stages:**
---
**Write:**

You define resources, which may be across multiple cloud providers and services. For example, you might create a configuration to deploy an application on virtual machines in a Virtual Private Cloud (VPC) network with security groups and a load balancer.

**Plan:**

Terraform creates an execution plan describing the infrastructure it will create, update, or destroy based on the existing infrastructure and your configuration.

**Apply:**

On approval, Terraform performs the proposed operations in the correct order, respecting any resource dependencies. For example, if you update the properties of a VPC and change the number of virtual machines in that VPC, Terraform will recreate the VPC before scaling the virtual machines.


![image](https://github.com/user-attachments/assets/ae00eac9-2141-4fb1-888f-974f09627f32)


# Terraform vs Cloudformation


**Multi-Cloud Support**
---
Terraform is an open-source tool designed for provisioning and managing infrastructure across different cloud providers, such as AWS, Azure, Google Cloud, and on-premise environments. It provides a consistent syntax and workflow when managing resources across different clouds.

CloudFormation is an AWS native service specifically created to provision and manage resources on AWS. Embedded deeply within their ecosystem, this standardized way to describe and deploy infrastructure makes CloudFormation invaluable in meeting resource demand across an AWS environment.

**Language and Syntax**
---
Terraform utilizes HashiCorp Configuration Language (HCL), an easy and concise domain-specific language specifically tailored for describing infrastructure as code. HCL lets users easily define resources, variables, and other configuration elements with concise syntax.

AWS CloudFormation supports both JSON and YAML formats to describe infrastructure. JSON can provide machine-friendly data representation, while YAML facilitates natural, structured representations of resources with their relationships.

**Declarative vs. Templating**
---
Terraform is a declarative tool, while CloudFormation is templating. Terraform's configuration files describe your desired state, while CloudFormation templates outline how it should approach reaching this state.

**Ecosystem Integrations**
---
Terraform boasts an expansive ecosystem of providers and modules developed by its community that allow it to integrate with various tools, cloud platforms, and services. CloudFormation, on the other hand, excels at AWS-specific integrations.

**State Management**
---
Terraform relies on a state file that records the actual state of the deployed infrastructure. This state file is essential for tracking changes, detecting drift, and planning updates to the infrastructure. The state can be stored locally or in remote backends like Amazon S3 or Consul.

AWS CloudFormation manages the state of stacks internally without exposing it directly to users. Users interact with stacks through CloudFormation's API, and the tool internally manages the state of resources associated with each stack.

**Resource Lifecycle Management**
---
Terraform provides a "plan-apply" model. When you make changes to the infrastructure configuration, you generate an execution plan first ("terraform plan"), which shows the proposed changes. After reviewing the plan, you apply the changes ("terraform apply") to create, modify, or delete resources.

AWS CloudFormation utilizes a "create-update-delete" model. You define the desired state of your infrastructure using CloudFormation templates. During updates, CloudFormation determines what changes are needed to bring the stack's actual state in line with the desired state and applies those changes.

**Ecosystem and Extensibility**
---
With plugins, you can extend Terraform's functionality to support new providers, data sources, and resources. You can also write your own plugins to customize Terraform to your specific needs. Plus, there is already a ton of community-contributed plugins available that you can easily integrate into your workflows.

AWS CloudFormation integrates tightly with AWS services, enabling seamless management of AWS resources. However, its scope is limited to AWS services, and there is no direct support for managing resources from other cloud providers.

**Drift Detection**
---
Terraform provides built-in drift detection, allowing you to identify discrepancies between the infrastructure's current state and the state described in your configuration. This is useful for identifying manual changes or unexpected modifications.

AWS CloudFormation's drift detection is specific to CloudFormation-managed stacks. It directly compares the current state with the template-defined state. It helps ensure that the resources deployed through CloudFormation remain in the expected state.

**Interpolation and Functions**
---
Terraform provides an extensive set of interpolation functions that allow you to dynamically generate values based on other values or inputs, making your configurations more flexible and easier to manage.

AWS CloudFormation offers intrinsic functions that allow you to perform tasks like referencing other resource attributes, performing basic calculations, and conditional logic within your templates. While not as comprehensive as Terraform's interpolation functions, they still offer essential dynamic capabilities.

**Learning Curve**
---
While Terraform and AWS CloudFormation have relatively gentle learning curves, the choice may depend on the team's existing knowledge and expertise. Developers familiar with AWS services may find AWS CloudFormation more intuitive, while those with experience in multiple cloud environments may prefer Terraform.

**Community support**
---
Terraform boasts a larger and more active community than CloudFormation, so there are more resources to assist users when learning and using Terraform.



# Terraform vs Ansible

Ansible and Terraform are two popular tools in the infrastructure-as-code (IaC) domain, but they serve slightly different purposes. Here’s a detailed comparison:

---

### **1. Purpose**
| **Feature**                | **Ansible**                                       | **Terraform**                                             |
|----------------------------|---------------------------------------------------|-----------------------------------------------------------|
| **Primary Use**            | Configuration Management and Orchestration        | Infrastructure Provisioning and Management                |
| **Functionality**          | Focuses on configuring existing infrastructure    | Focuses on creating and managing infrastructure resources |

---

### **2. Declarative vs. Procedural**
| **Aspect**                | **Ansible**                                   | **Terraform**                                                |
|---------------------------|-----------------------------------------------|--------------------------------------------------------------|
| **Approach**              | Mix of declarative and procedural             | Purely declarative                                           |
| **Implementation**        | Tasks/plays execute in a sequence             | Describes desired end state, Terraform figures out execution |

---

### **3. Language**
| **Aspect**                | **Ansible**                                   | **Terraform**                                |
|---------------------------|-----------------------------------------------|----------------------------------------------|
| **Language**              | YAML for playbooks                            | HCL (HashiCorp Configuration Language)       |

---

### **4. Agent Requirement**
| **Aspect**                | **Ansible**                                    | **Terraform**                                |
|---------------------------|------------------------------------------------|----------------------------------------------|
| **Agentless**             | Yes (SSH or WinRM-based)                       | Yes, but uses a central state file           |

---

### **5. State Management**
| **Aspect**                | **Ansible**                                   | **Terraform**                                      |
|---------------------------|-----------------------------------------------|----------------------------------------------------|
| **State Management**      | No persistent state tracking                  | Maintains state in a `.tfstate` file               |
| **Impact of Changes**     | Executes tasks without a state reference      | Tracks state to plan and apply incremental changes |

---

### **6. Use Cases**
| **Aspect**                | **Ansible**                                   | **Terraform**                                |
|---------------------------|-----------------------------------------------|----------------------------------------------|
| **Best Suited For**       | Application deployment and configuration      | Infrastructure provisioning and scaling      |
| **Examples**              | - Install software                            | - Create VMs, networks, and load balancers   |
|                           | - Configure servers                           | - Manage cloud resources                     |

---

### **7. Integration with Cloud Providers**
| **Aspect**                | **Ansible**                                    | **Terraform**                                |
|---------------------------|------------------------------------------------|----------------------------------------------|
| **Cloud Support**         | Supports major cloud providers via modules     | Strong cloud support with provider plugins   |

---

### **8. Execution Model**
| **Aspect**                | **Ansible**                                   | **Terraform**                                |
|---------------------------|-----------------------------------------------|----------------------------------------------|
| **Push vs. Pull**         | Push-based model                              | Uses a client-based execution with plans     |



# Advantages of Terraform

**Advantages**
---
**Infrastructure as Code:** 

Terraform enables the use of Infrastructure as Code, where infrastructure is treated as software and can be version controlled, tested, and deployed using code. 

**Multi-Cloud Support:** 

Terraform supports multiple cloud platforms, making it easier to deploy and manage infrastructure across different environments. 

**Consistency and Standardization:** 

Terraform ensures consistency and standardization of infrastructure across different environments, reducing the risk of errors and increasing the efficiency of deployment. 

**Flexibility:** 

Terraform provides flexibility in terms of configuration and deployment, allowing for quick changes and modifications to the infrastructure. 



1.Terraform internally uses the DAG(direct acyclic graph) technique to get the best results. 

2.Terraform supports a variety of cloud options, and switching providers is a breeze. 

3.Because the whole infrastructure is managed as code, incremental resource changes are not a problem. 

4.Supports scripts that span many regions. For instance, we can search for an ami in us-east-1 and use that information to build an ec2 instance in us-east-2. 

5.Effective networking assistance. It might take months to build an on-premise data center, but using Terraform, it can be done in a matter of hours. 

6.Integrates easily with the build and deployment processes. 

7.Modular architecture. 

8.State upkeep. Terraform will reconstruct any objects produced by it if another process removes them. 

9.Allows for the import of existing resources to convert them to a Terraform state.


**Disadvantages**
---
1.Currently under development. Each month, we release a beta version. 

2.The concerns are more connected to Terraform’s (AWS) provider teams. For example, Terraform AWS’s quick sight does not yet support all features. 

3.Technology with a narrow application. To write loops or if blocks, intuition is required. Nonetheless, several hacks are accessible online. 

4.Specific configurations, such as the terraform backend, are not accessible through var files. Therefore, either give the information in place or construct a backend-
config block during Terraform’s initialization. 

5.There is no error handling. This implies that we cannot utilize try-catch in the manner we do in other languages. 

6.There is no way to roll back. As a result, we must delete everything and re-run if necessary. 

7.A few things are prohibited from import. 

8.Terraform does not support script generation from the state. 

9.Terraform acknowledges that specific versions may include bugs. 


# Terraform providers

Terraform relies on plugins called providers to interact with cloud providers, SaaS providers, and other APIs.
Terraform configurations must declare which providers they require so that Terraform can install and use them. Additionally, some providers require configuration (like endpoint URLs or cloud regions) before they can be used.

**What Providers Do**
---
Each provider adds a set of resource types and/or data sources that Terraform can manage.
Every resource type is implemented by a provider; without providers, Terraform can't manage any kind of infrastructure.
Most providers configure a specific infrastructure platform (either cloud or self-hosted). Providers can also offer local utilities for tasks like generating random numbers for unique resource names.

**Where Providers Come From**
---
Providers are distributed separately from Terraform itself, and each provider has its own release cadence and version numbers.
The Terraform Registry is the main directory of publicly available Terraform providers, and hosts providers for most major infrastructure platforms.

**Commonly Used Terraform Providers List**
---
**AWS**

Amazon Web Services (AWS) is a comprehensive and widely used cloud computing platform and service provided by Amazon.com. AWS offers a vast array of cloud-based computing resources, services, and tools that enable individuals, businesses, and organizations to build, deploy, and manage a wide range of applications, websites, and services in a highly scalable and cost-effective manner.

Each AWS service or resource type corresponds to a specific resource provider in Terraform. These providers define Terraform resources and data sources that map to the corresponding AWS resources. The AWS provider for Terraform acts as the intermediary between your Terraform configurations and the AWS API.

<img width="584" alt="image" src="https://github.com/user-attachments/assets/2479aa3f-e724-470b-8cbb-fd03f175fd20" />

---

**AZURE**

A cloud computing platform and service provided by Microsoft. It offers a wide range of cloud-based services and solutions, including infrastructure as a service (IaaS), platform as a service (PaaS), and software as a service (SaaS) that can be used for various computing, storage, analytics, databases, networking, machine learning, and application deployment needs.

Azure Resource Providers are components that Terraform uses to interact with Azure resources. Azure Resource Providers in Terraform correspond to different Azure services or resource types that you can manage and provision using Terraform configurations.

Each Azure service or resource type has its own resource provider in Terraform, and these providers are responsible for defining the Terraform resources and data sources that map to the corresponding Azure resources. The Azure provider for Terraform acts as the bridge between your Terraform configurations and the Azure API

<img width="584" alt="image" src="https://github.com/user-attachments/assets/20ff8e0c-8ff5-4b00-bf7a-86288dedd849" />

---

**Google Cloud**

Google Cloud, often referred to as Google Cloud Platform (GCP), is a comprehensive suite of cloud computing services provided by Google. It offers a wide range of cloud-based solutions for computing, storage, databases, machine learning, data analytics, and more.

The Google Cloud Terraform Provider is used to configure your Google Cloud Platform infrastructure. It is collaboratively maintained by the Google Terraform team at Google and the Terraform team at HashiCorp.

<img width="584" alt="image" src="https://github.com/user-attachments/assets/2614078d-4eb3-4dc8-b299-da7f8adceca9" />

---


![image](https://github.com/user-attachments/assets/fda973da-a60d-4831-a473-d890fc0db479)


