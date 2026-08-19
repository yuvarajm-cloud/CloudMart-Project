# ☁️ CloudMart

### Cloud-Native Application Deployment & DevOps Project

> A hands-on Cloud & DevOps project demonstrating **AWS infrastructure, Terraform, Docker, Kubernetes, and CI/CD automation with Jenkins**.

<p align="center">

**AWS** • **Terraform** • **Docker** • **Kubernetes** • **Jenkins** • **Linux** • **GitHub**

</p>

---

## 📌 Overview

**CloudMart** is a cloud-native application deployment project created to understand and implement a real-world **Cloud & DevOps workflow**.

The project covers the complete journey from source code to cloud deployment:

```text
Developer
    │
    ▼
  GitHub
    │
    ▼
 Jenkins
    │
    ▼
  Docker
    │
    ▼
Container Registry
    │
    ▼
Kubernetes
    │
    ▼
CloudMart Application
```

The infrastructure is provisioned using **Terraform**, the application is containerized using **Docker**, and Kubernetes is used to deploy and manage application containers.

---

# 🎯 Project Goals

The main goal of CloudMart is to gain practical experience with modern Cloud and DevOps technologies.

### What this project demonstrates

* ☁️ Cloud infrastructure on AWS
* 🏗️ Infrastructure as Code with Terraform
* 🐳 Application containerization with Docker
* ☸️ Container orchestration with Kubernetes
* 🔄 CI/CD automation with Jenkins
* 🔧 Linux server administration
* 🌐 Application deployment
* 📦 Container image management
* 🔐 Cloud networking and security concepts
* 🔗 Git-based development workflow

---

# 🏗️ Architecture

```text
                           ┌──────────────┐
                           │    GitHub    │
                           │ Source Code  │
                           └──────┬───────┘
                                  │
                                  ▼
                           ┌──────────────┐
                           │    Jenkins   │
                           │    CI / CD   │
                           └──────┬───────┘
                                  │
                                  ▼
                           ┌──────────────┐
                           │    Docker    │
                           │    Image     │
                           └──────┬───────┘
                                  │
                                  ▼
                       ┌─────────────────────┐
                       │  Container Registry │
                       └──────────┬──────────┘
                                  │
                                  ▼
                           ┌──────────────┐
                           │ Kubernetes   │
                           │   Cluster    │
                           └──────┬───────┘
                                  │
                         ┌────────┴────────┐
                         ▼                 ▼
                  ┌────────────┐    ┌────────────┐
                  │   Pod 01   │    │   Pod 02   │
                  │ CloudMart  │    │ CloudMart  │
                  └──────┬─────┘    └─────┬──────┘
                         │                 │
                         └────────┬────────┘
                                  ▼
                         ┌────────────────┐
                         │  CloudMart UI  │
                         └────────────────┘
```

---

# 🔄 DevOps Workflow

```text
┌─────────────────┐
│   Write Code    │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│   Git Commit    │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│   GitHub Push   │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│     Jenkins     │
│    CI / CD      │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│  Docker Build   │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│  Push Image     │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│   Kubernetes    │
│    Deploy       │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│ CloudMart App   │
└─────────────────┘
```

---

# 🧰 Technology Stack

| Layer              | Technology            | Purpose                      |
| ------------------ | --------------------- | ---------------------------- |
| ☁️ Cloud           | AWS                   | Cloud infrastructure         |
| 🏗️ IaC            | Terraform             | Infrastructure provisioning  |
| 🐳 Container       | Docker                | Application containerization |
| ☸️ Orchestration   | Kubernetes            | Container management         |
| 🔄 CI/CD           | Jenkins               | Automation pipeline          |
| 🐧 OS              | Linux                 | Server environment           |
| 🔧 Version Control | Git                   | Source management            |
| 🌐 Repository      | GitHub                | Code hosting                 |
| 💻 Frontend        | HTML, CSS, JavaScript | Web application              |

---

# ☁️ AWS Infrastructure

The project uses AWS to provide the underlying cloud infrastructure.

### AWS concepts used

```text
AWS
│
├── EC2
│   └── Compute instances
│
├── VPC
│   └── Network isolation
│
├── Subnets
│   └── Network segmentation
│
├── Security Groups
│   └── Traffic control
│
└── IAM
    └── Access management
```

---

# 🏗️ Infrastructure as Code — Terraform

Terraform is used to provision and manage AWS infrastructure.

### Terraform workflow

```text
Terraform Configuration
          │
          ▼
    terraform init
          │
          ▼
   terraform validate
          │
          ▼
     terraform plan
          │
          ▼
     terraform apply
          │
          ▼
    AWS Infrastructure
```

### Commands

Initialize Terraform:

```bash
terraform init
```

Validate configuration:

```bash
terraform validate
```

Preview changes:

```bash
terraform plan
```

Create infrastructure:

```bash
terraform apply
```

Destroy infrastructure:

```bash
terraform destroy
```

> ⚠️ Do not commit Terraform state files such as `terraform.tfstate` or `terraform.tfstate.backup` to a public repository.

---

# 🐳 Docker

Docker packages the CloudMart application and its dependencies into a portable container.

### Docker workflow

```text
Application
     │
     ▼
 Dockerfile
     │
     ▼
Docker Image
     │
     ▼
Docker Container
```

### Build image

```bash
docker build -t cloudmart:v1 .
```

### View images

```bash
docker images
```

### Run container

```bash
docker run --rm -p 3000:3000 cloudmart:v1
```

### View running containers

```bash
docker ps
```

---

# ☸️ Kubernetes

Kubernetes is used to deploy, manage and scale the CloudMart application.

### Kubernetes resources

```text
Kubernetes
│
├── Deployment
│   ├── Application Pods
│   └── Replica management
│
└── Service
    └── Application networking
```

### Deploy application

```bash
kubectl apply -f deployment.yaml
```

### Create service

```bash
kubectl apply -f service.yaml
```

### Check Pods

```bash
kubectl get pods
```

### Check Deployments

```bash
kubectl get deployments
```

### Check Services

```bash
kubectl get services
```

### View Pod details

```bash
kubectl describe pod <pod-name>
```

### View application logs

```bash
kubectl logs <pod-name>
```

---

# 🔄 Jenkins CI/CD

Jenkins automates the build and deployment process.

### Pipeline

```text
GitHub
   │
   ▼
Checkout
   │
   ▼
Build
   │
   ▼
Test
   │
   ▼
Docker Build
   │
   ▼
Push Image
   │
   ▼
Kubernetes Deploy
   │
   ▼
Application
```

### Pipeline stages

| Stage        | Description             |
| ------------ | ----------------------- |
| Checkout     | Retrieve source code    |
| Build        | Build the application   |
| Test         | Validate application    |
| Docker Build | Create container image  |
| Push         | Upload container image  |
| Deploy       | Deploy to Kubernetes    |
| Verify       | Check deployment status |

---

# 📂 Project Structure

```text
CloudMart-Project/
│
├── index.html
├── styles.css
├── script.js
│
├── Dockerfile
│
├── deployment.yaml
├── service.yaml
│
├── main.tf
│
├── README.md
│
└── images/
    └── screenshots/
```

---

# 🖥️ Application

CloudMart provides a web-based application interface that can be packaged into a Docker container and deployed to Kubernetes.

The deployment flow separates the application from the underlying infrastructure, allowing the same container image to be used across different environments.

---

# 📸 Screenshots

Add your actual project screenshots here.

### CloudMart Application

```markdown
![CloudMart Application](images/screenshots/cloudmart.png)
```

### AWS Infrastructure

```markdown
![AWS Infrastructure](images/screenshots/aws.png)
```

### Docker

```markdown
![Docker Container](images/screenshots/docker.png)
```

### Kubernetes

```markdown
![Kubernetes Deployment](images/screenshots/kubernetes.png)
```

### Jenkins Pipeline

```markdown
![Jenkins Pipeline](images/screenshots/jenkins.png)
```

---

# 📊 DevOps Dashboard

| Area               | Implementation |
| ------------------ | -------------- |
| ☁️ Cloud           | AWS            |
| 🏗️ Infrastructure | Terraform      |
| 🐳 Containers      | Docker         |
| ☸️ Orchestration   | Kubernetes     |
| 🔄 CI/CD           | Jenkins        |
| 🔧 Source Control  | Git + GitHub   |
| 🐧 Environment     | Linux          |

---

# 🧠 Key Concepts Learned

### AWS

* EC2
* VPC
* Subnets
* Security Groups
* IAM
* Cloud networking

### Terraform

* Infrastructure as Code
* Resource provisioning
* Terraform lifecycle
* `init`
* `validate`
* `plan`
* `apply`
* `destroy`

### Docker

* Dockerfile
* Images
* Containers
* Port mapping
* Container lifecycle

### Kubernetes

* Pods
* Deployments
* Services
* Replicas
* Application orchestration

### Jenkins

* CI/CD
* Automated builds
* Docker integration
* Deployment automation

### Git

* Version control
* Branching
* Commits
* Remote repositories

---

# 🔐 Security Considerations

The project also demonstrates basic cloud security concepts.

Recommended production practices include:

* Restrict SSH access to trusted IP addresses.
* Avoid exposing unnecessary ports.
* Use IAM roles instead of hard-coded credentials.
* Never commit secrets to GitHub.
* Never commit Terraform state containing sensitive information.
* Use HTTPS for production deployments.
* Store application secrets securely.

---

# 🚀 Future Improvements

* [ ] Integrate Amazon ECR
* [ ] Complete Jenkins CI/CD pipeline
* [ ] Add Kubernetes Ingress
* [ ] Configure HTTPS / SSL
* [ ] Add Prometheus monitoring
* [ ] Add Grafana dashboards
* [ ] Implement Kubernetes HPA
* [ ] Add centralized logging
* [ ] Improve AWS networking
* [ ] Implement production-grade security
* [ ] Automate infrastructure deployment
* [ ] Add automated testing

---

# 🎓 Learning Outcome

CloudMart helped me gain practical experience in building a complete Cloud & DevOps workflow.

```text
AWS
 │
 ▼
Terraform
 │
 ▼
Docker
 │
 ▼
Kubernetes
 │
 ▼
Jenkins
 │
 ▼
CI/CD
 │
 ▼
Cloud Application
```

The project provided hands-on exposure to **cloud infrastructure, Infrastructure as Code, containerization, orchestration, Linux administration, version control and CI/CD automation**.

---

# 👨‍💻 Author

## Yuvaraj M

**B.Sc. Computer Science | Cloud & DevOps Enthusiast**

### Skills

```text
AWS
Microsoft Azure
Linux
Docker
Kubernetes
Terraform
Jenkins
Git
GitHub
Python
JavaScript
```

---

## ⭐ Support

If you find this project useful, consider giving the repository a ⭐.

**CloudMart — Built as a hands-on Cloud & DevOps project.**
