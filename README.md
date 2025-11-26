⭐ Disney+ Hotstar App Clone — End-to-End DevOps Project

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
