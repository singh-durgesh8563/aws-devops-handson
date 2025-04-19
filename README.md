# Node.js DevOps Practice Project 🚀

This is a hands-on DevOps + MLOps practice project for interns, using a simple Node.js “Hello World” app as the base.

The goal is to learn automation-first cloud deployment using tools like Terraform, GitHub Actions, Ansible, Docker, AWS ECS, Kubernetes (Minikube), Helm, and Prometheus-Grafana.

---

## 📦 Tools You Will Use
- Terraform
- GitHub Actions
- Ansible
- Docker
- AWS CLI, EC2, ECR, ECS
- Kubernetes (Minikube)
- Helm or ArgoCD
- Prometheus & Grafana

---

## 🛠️ Tasks Breakdown

### ✅ Task 1: Initial Setup + Local Run
- Fork this repository to your GitHub account.
- Clone it locally using `git clone`.
- Run the app on your local machine:
  ```bash
  npm install
  npm start
  ```
- Confirm it works on `http://localhost:3000`.

---

### ✅ Task 2: Provision EC2 Instance Using Terraform
- Write Terraform code to create:
  - EC2 instance (Amazon Linux / Ubuntu)
  - Security group (allow SSH - port 22 and HTTP - port 80)
- Use GitHub Actions to trigger the Terraform scripts (avoid manual `terraform apply`).
- Output public IP via `outputs.tf`.

---

### ✅ Task 3: Deploy Node.js App on EC2 (Manual)
- SSH into your EC2 instance.
- Clone your GitHub repo.
- Install Node.js and npm on EC2.
- Run the app using `npm start`.
- Open the app using EC2's public IP in the browser.

---

### ✅ Task 4: Automate App Deployment Using GitHub Actions + Ansible
- Create a GitHub Actions workflow that:
  - Triggers on push to `main` branch.
  - Applies Terraform code to provision EC2.
  - Runs Ansible playbook to:
    - SSH into EC2
    - Install Node.js and npm
    - Clone your repo
    - Start the app
- After code push, EC2 should auto-provision and app should run without any manual steps.

---

### ✅ Task 5: Docker + ECR + ECS Deployment (All via Terraform)
- Write a `Dockerfile` to containerize your Node.js app.
- Build and test the Docker image locally.
- Push the image to your own AWS ECR repo.
- Use Terraform to create:
  - ECS Cluster (Fargate or EC2 launch type)
  - Task definition and service
  - IAM roles, SGs, etc.
- Write a new GitHub Actions workflow to:
  - Build and push Docker image to ECR.
  - Trigger Terraform to deploy to ECS.

---

### ✅ Task 6: Kubernetes Deployment with Minikube + Helm/ArgoCD
- Install Minikube locally.
- Write K8s manifests (Deployment + Service) for your app.
- Use `kubectl` to deploy the app manually first.
- Create a dedicated namespace and apply best practices (resource limits, health checks, etc).
- Package the app as a Helm Chart or deploy via ArgoCD.
- App should be accessible via `minikube service` or ingress controller.

---

### ✅ Task 7: Monitoring with Prometheus and Grafana
- Install Prometheus and Grafana in your Minikube cluster.
- Expose them via NodePort or Ingress.
- Add `/metrics` endpoint to your Node.js app (use `prom-client` npm package).
- Configure Prometheus to scrape app metrics.
- Connect Grafana to Prometheus and create dashboards for:
  - CPU usage
  - Memory usage
  - HTTP request count
  - Custom metrics (if any)

---

## 📸 Submission Guidelines

For each task, submit:
- ✅ 1 or more screenshots as proof
- 📝 A short explanation (2–3 lines) of what you did
- 🔗 Your GitHub repo link with:
  - App source code
  - Terraform/Ansible/GitHub Actions files
  - Dockerfile / Helm charts / K8s manifests

