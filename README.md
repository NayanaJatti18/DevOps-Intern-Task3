# Task 3: Infrastructure as Code (IaC) with Terraform

## Project Overview
This project demonstrates Infrastructure as Code (IaC) by using Terraform to provision and manage a local Docker container running Nginx.

## Objectives
- Understand Infrastructure as Code.
- Configure the Terraform Docker provider.
- Provision a Docker image and container.
- Preview infrastructure changes using `terraform plan`.
- Manage resources using Terraform state.
- Destroy resources using `terraform destroy`.

## Tools and Technologies
- Terraform
- Docker Desktop
- Nginx Alpine
- Git and GitHub

## Architecture
Terraform communicates with Docker to download the Nginx image and create a container. Port 8080 on the local machine maps to port 80 inside the container.

## Project Files
- `main.tf` — Terraform configuration for the Docker image and container.
- `.gitignore` — Excludes Terraform state and local working files.
- `.terraform.lock.hcl` — Records the selected provider versions.

## Implementation Steps

### 1. Initialize Terraform
```bash
terraform init
```

### 2. Preview Infrastructure Changes
```bash
terraform plan
```

### 3. Create Infrastructure
```bash
terraform apply
```

### 4. Verify the Container
```bash
docker ps
```

Open http://localhost:8080 to access the Nginx welcome page.

### 5. Inspect Terraform State
```bash
terraform state list
terraform state show docker_container.nginx_container
```

### 6. Destroy Infrastructure
```bash
terraform destroy
```

## Expected Outcome
Successfully provision and manage a local Docker container using Terraform, inspect the resources through Terraform state,
 and remove the managed infrastructure when no longer needed.

## Learning Outcomes
- Basic Terraform configuration and provider management.
- Infrastructure provisioning and lifecycle management.
- Docker container management using Terraform.
- Terraform state inspection and Git-based project version control.