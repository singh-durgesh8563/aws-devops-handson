```markdown
---

# Crecita React Frontend — DevOps + Cloud Practice Project 🚀

This is a hands-on DevOps and Cloud Deployment Practice Project, using a simple React.js website ("Welcome to Crecita") instead of a Node.js backend.

You will learn to:
- Build and run a React frontend app locally
- Deploy the React app on AWS EC2 manually
- Automate deployments using Terraform, GitHub Actions, Ansible
- Containerize and deploy via Docker, ECR, ECS
- Deploy on Kubernetes using Helm/ArgoCD
- Monitor deployments with Prometheus & Grafana

---

## 📦 Tools You Will Use
- React.js (Frontend App)
- Terraform
- GitHub Actions
- Ansible
- Docker
- AWS CLI, EC2, ECR, ECS
- Kubernetes (Minikube)
- Helm or ArgoCD
- Prometheus & Grafana

---

## 📂 Frontend App — Crecita Website

A very simple React app displaying:

```plaintext
Welcome to Crecita
```

### Project Structure

```bash
crecita-website/
├── README.md
├── package.json
├── public/
│   └── index.html
├── src/
│   ├── App.js
│   └── index.js
└── node_modules/
```

---

### 🏃 How to Run Locally

1. Clone the repo:

```bash
git clone <your-repo-url>
cd aws-devops-handson
```

2. Install dependencies:

```bash
npm install
```

3. Start the app:

```bash
npm start
```

4. Open [http://localhost:3000](http://localhost:3000) in your browser.

---

## 🛠️ DevOps Tasks Breakdown

---

### ✅ Task 1: Initial Setup + Local Run
- Fork this repository and clone it locally.
- Run `npm install` and `npm start`.
- Confirm that `Welcome to Crecita` is visible on `localhost:3000`.

---

### ✅ Task 2: Provision EC2 Instance Using Terraform
- Write Terraform code to create:
    - One EC2 instance (Amazon Linux / Ubuntu)
    - Security Group allowing SSH (port 22) and HTTP (port 3000)
- Use GitHub Actions to trigger Terraform automatically.

---

### ✅ Task 3: Deploy React App Manually on EC2
- SSH into the EC2 instance.
- Install Node.js and npm.
- Clone your GitHub repository inside EC2.
- Run:

```bash
npm install
npm start
```

- Open `<EC2 Public IP>:3000` in your browser to access the app.

---

### ✅ Task 4: Automate Deployment Using GitHub Actions + Ansible
- GitHub Actions will:
    - Trigger Terraform to create EC2.
    - Run an Ansible Playbook to:
        - Install Node.js and npm
        - Clone the React repo
        - Install app dependencies
        - Start the app

---

### ✅ Task 5: Docker + ECR + ECS Deployment
- Create a `Dockerfile` to containerize the React app.
- Build and push the Docker image to AWS ECR.
- Use Terraform to:
    - Create an ECS Cluster and Service
    - Deploy the Docker container on ECS
- Automate everything via GitHub Actions.

---

### ✅ Task 6: Kubernetes Deployment (Minikube or EKS)
- Write Kubernetes manifests for:
    - Deployment
    - Service (NodePort or LoadBalancer)
- Deploy manually using:

```bash
kubectl apply -f <manifest-files>
```

- Later, automate deployment using Helm charts or ArgoCD.

---

### ✅ Task 7: Monitoring Using Prometheus and Grafana
- Set up Prometheus and Grafana inside the Kubernetes cluster.
- Monitor:
    - Pod health
    - CPU and Memory usage
- Create Grafana dashboards based on Prometheus data.

---

### ✅ Task 8: Deploy a Container Using a Kubernetes Secret

Objective:
Deploy a container using the image hashicorp/http-echo inside a Kubernetes namespace called crecita-ns.

What to do:
	•Create a Kubernetes Secret that contains this message:
         ```bash
         Welcome to Crecita
         ```
	•Inject this secret into the container (as a file or env variable).
	•Do not hardcode the message in your Deployment YAML.
	•The container must display the message in the browser (e.g., via curl or port-forward).

---
### ✅ Task 9: Deploy a Container Using a Kubernetes Secret

Objective:
Update the secret message and ensure the change appears in the browser without restarting the pod.

New message to use:
```bash
Welcome to Crecita — DevOps + Cloud Training Lab
```
What to do:
	•Modify the Kubernetes Secret to contain the updated message.
	•Mount the secret into the container as a file (e.g., message.txt).
	•Use a simple web server (e.g., Python’s http.server) to serve that file.
	•Your container must read the file on every request, so that when the secret changes, the browser shows the new message.
	•Manual pod restarts are not allowed.
	•The message should auto-refresh within 60 seconds (as Kubernetes updates mounted secrets periodically).

---

## 📸 Submission Guidelines

For each task:
- ✅ Submit 1–2 screenshots as proof.
- 📝 Write a short explanation (2–3 lines) of what you did.
- 🔗 Share your GitHub repository link containing:
    - App source code
    - Terraform / Ansible / GitHub Actions files
    - Dockerfile / Helm charts / Kubernetes manifests

---

# 🚀 Happy Learning and Building! 💻🔥
---
```
