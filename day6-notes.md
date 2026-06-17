# Day 6 Notes — Project 2 Complete + Terraform + CloudFormation

## What I built
- Complete 3-tier web application on AWS
- Automated infrastructure with Terraform
- Wrote CloudFormation template
- Fixed Auto Scaling user data script
- Deployed and tested high availability

## Architecture
- VPC (10.0.0.0/16) with 4 subnets across 2 AZs
- Application Load Balancer
- Auto Scaling Group (min 1, max 4, desired 2)
- RDS MySQL database in private subnets
- Security groups chained: ALB → EC2 → RDS

## Terraform commands learned
- terraform init — initialize project
- terraform validate — check syntax
- terraform plan — preview changes
- terraform apply — deploy infrastructure
- terraform output — show outputs
- terraform refresh — sync state

## Terraform best practices learned
- Never commit .terraform/ folder to GitHub
- Always add .gitignore before terraform init
- Use terraform.tfvars for sensitive variables
- Never commit terraform.tfvars to GitHub
- Use terraform output to get resource details

## CloudFormation vs Terraform
- CloudFormation → AWS only, YAML/JSON
- Terraform → multi-cloud, HCL language
- Both create infrastructure as code
- Terraform more popular in industry

## Auto Scaling lessons
- User data script runs on instance launch
- AMI must match the package manager (dnf vs apt)
- Amazon Linux 2023 uses dnf
- Ubuntu uses apt
- Always test user data by terminating an instance

## Key lessons
- Always add .gitignore before terraform init
- Terraform owns resources — don't mix manual and Terraform
- Delete resources in correct order to avoid dependencies
- Auto Scaling automatically replaces terminated instances
- Load balancer detects unhealthy instances automatically

## GitHub lessons
- Never commit large files to GitHub (>100MB)
- Use git reset HEAD~n to undo commits
- Add only specific files with git add filename
- .terraform/ folder can be 600MB+