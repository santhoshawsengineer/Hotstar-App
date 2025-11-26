⭐ Disney+ Hotstar App Clone — End-to-End DevOps Project

<img width="960" height="524" alt="app" src="https://github.com/user-attachments/assets/6a5748cb-9d4c-4502-a509-ace86cb8c3d6" />

This project showcases a complete production-grade DevOps pipeline, integrating infrastructure automation, CI/CD, containerization, and GitOps-based Kubernetes deployment.

🚀 1️⃣ Project Overview

This project demonstrates a complete end-to-end DevOps workflow, including:

AWS infrastructure provisioning using Terraform

CI/CD automation using Jenkins

Containerization using Docker

Code quality & security scanning with SonarQube

Docker image publishing to Docker Hub

GitOps deployment using ArgoCD

Kubernetes-based application deployment

🛠️ 2️⃣ Tools & Technologies Used

Terraform

AWS (EC2, VPC, IAM)

Jenkins (CI/CD Pipelines)

Docker

SonarQube

Git & GitHub

Kubernetes

ArgoCD (GitOps)

Docker Hub

🏗️ 3️⃣ Architecture Flow
Terraform → AWS EC2 → Jenkins → SonarQube → Docker Build → Docker Hub 
          → ArgoCD → Kubernetes Deployment


(Optional: Add an architecture diagram image in the repo for better visualization.)

⚙️ 4️⃣ Setup Instructions
🔹 Step 1: Provision Infrastructure

Clone this repository

Configure AWS credentials

Run the following:

terraform init
terraform apply

🔹 Step 2: Install Dependencies on EC2

Install:

Jenkins

Terraform

Docker

Git

(You can automate this using EC2 User Data.)

🔹 Step 3: Jenkins Configuration

Create a Pipeline Job

Connect it to this GitHub repository

Add credentials:

AWS Access Key

Docker Hub Username & Token

SonarQube Token

Configure SonarQube in:
Jenkins → Manage Jenkins → System Configuration

🔹 Step 4: SonarQube Setup

Start SonarQube:

docker run -d --name sonar -p 9000:9000 sonarqube:latest


Generate a token:
SonarQube → Security → Tokens

Add the token to Jenkins credentials.

🔹 Step 5: Build & Push Docker Image

Jenkins pipeline will:

Build the application

Create Docker image

Push image to Docker Hub

🔹 Step 6: Deploy to Kubernetes using ArgoCD (GitOps)

Install ArgoCD in the Kubernetes cluster

Expose ArgoCD server

In ArgoCD UI:

Create a new Application

Point it to your repo containing Kubernetes manifests

Set Sync Policy → Auto or Manual

ArgoCD will continuously monitor and apply Git changes.

🎯 5️⃣ Outputs / Final Results

✔️ AWS infra provisioned using Terraform

✔️ Fully automated CI/CD pipeline via Jenkins

✔️ Application containerized using Docker

✔️ SonarQube integrated for static code analysis

✔️ Docker images automatically pushed to Docker Hub

✔️ Kubernetes deployment automated through ArgoCD (GitOps)

✔️ Any code push triggers automatic build, scan, and deployment

**Screenshots**
<img width="960" height="509" alt="dockerhub" src="https://github.com/user-attachments/assets/c0598045-1f35-4df2-8b8e-428d29fa2616" />
<img width="960" height="497" alt="argocd" src="https://github.com/user-attachments/assets/64e5b303-12df-45f3-ab52-9b7c9916cccc" />
<img width="960" height="524" alt="app" src="https://github.com/user-attachments/assets/ed49b648-bea7-4ab4-9b2a-c3f29e9f752e" />
<img width="1920" height="1039" alt="sonar" src="https://github.com/user-attachments/assets/d686e18d-0acf-485f-bb8e-6e045906a44d" />
<img width="960" height="516" alt="pods" src="https://github.com/user-attachments/assets/63aa127e-7d72-4b5b-8cc2-0bda1cb3e096" />
<img width="960" height="519" alt="jenkins" src="https://github.com/user-attachments/assets/97408df5-a1f9-4d3d-aa3d-39b38d4b4aea" />
<img width="960" height="500" alt="instances" src="https://github.com/user-attachments/assets/7dbea4fa-e572-41bf-a0ee-325c5a6e1000" />
<img width="960" height="442" alt="github" src="https://github.com/user-attachments/assets/a887e729-2e39-45d7-a85c-3b61d9dca646" />

