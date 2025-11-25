Disney hotstar app clone project

1️⃣ Project Overview

This project demonstrates a complete end-to-end DevOps workflow including:

AWS infrastructure provisioning using Terraform

CI/CD automation using Jenkins

Containerization using Docker

Code quality & vulnerability scanning with SonarQube

Image publishing to Docker Hub

GitOps-based deployment using ArgoCD

Application deployment into a Kubernetes cluster



---

2️⃣ Tools Used

Terraform

AWS (EC2, VPC, IAM)

Jenkins (Pipeline)

Docker

SonarQube

Git & GitHub

Kubernetes

ArgoCD

Docker Hub



---

3️⃣ Architecture

Terraform → AWS EC2 → Jenkins → SonarQube → Docker Build → Docker Hub 
          → ArgoCD → Kubernetes Deployment

(Optional: Add a simple diagram image in the repo.)


---

4️⃣ Setup Instructions

1. Provision Infrastructure

Clone this repository

Configure AWS credentials

Run:

terraform init
terraform apply


2. Install Dependencies on EC2 (User Data or Manual)

Jenkins

Terraform

Docker

Git


3. Jenkins Configuration

Create a pipeline job

Connect pipeline to this GitHub repo

Add required credentials:

AWS Access Key

Docker Hub credentials

SonarQube token


Add SonarQube server URL in Jenkins → System Configuration


4. SonarQube Setup

Start SonarQube container:

docker run -d --name sonar -p 9000:9000 sonarqube:latest

Generate token in SonarQube → Security → Tokens

Add token in Jenkins Credentials


5. Build & Push Docker Image

Jenkins pipeline builds the application

Docker image pushed to Docker Hub using Jenkins


6. Deploy to Kubernetes (GitOps via ArgoCD)

Install ArgoCD on Kubernetes cluster

Expose ArgoCD server (port-forward or LoadBalancer)

In ArgoCD UI:

Create a new application

Point it to your Kubernetes manifest repo (Deployment, Service, etc.)

Set sync policy to automatic or manual


ArgoCD continuously watches the repo and deploys changes to the cluster



---

5️⃣ Outputs / Results

AWS infrastructure provisioned via Terraform

Fully automated CI/CD pipeline with Jenkins

Containerized application running in Docker

SonarQube integrated for code quality & security checks

Image pushed to Docker Hub automatically

Kubernetes deployment managed using ArgoCD (GitOps)

Automatic updates whenever new code is pushed.





