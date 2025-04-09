# Paper.Social - DevOps Setup (AWS Only)

## 🧱 Infrastructure
- Provisioned with Terraform under `terraform/aws/`
- Deploys EC2 instance and security group

## ⚙️ Configuration
- Managed by Ansible in `ansible/`
- Installs Docker, runs an NGINX container with a static HTML page

## 🚀 CI/CD
- Configured using GitHub Actions in `.github/workflows/aws-deploy.yml`
- Automatically provisions infra and runs Ansible on push to `main`

## 🔐 Secrets Required
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- (Optional) SSH key for Ansible in GitHub or EC2 keypair

## 📊 Monitoring (Optional)
- Add AWS CloudWatch agent or Prometheus+Grafana containers

## 💰 Cost
- Uses `t2.micro` (Free Tier eligible)
- Keep infra shut down if unused to avoid charges