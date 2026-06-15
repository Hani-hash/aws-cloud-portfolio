# Project 2 — 3-Tier Web Application

## Architecture
- Application Load Balancer — distributes traffic
- Auto Scaling Group — 2-4 EC2 instances across 2 AZs
- RDS MySQL — private subnet, not accessible from internet

## Services used
- VPC with public and private subnets
- Internet Gateway
- Route Tables
- Security Groups (alb-sg, ec2-sg, rds-sg)
- EC2 (Amazon Linux 2023, nginx)
- Application Load Balancer
- Auto Scaling Group
- RDS MySQL (db.t3.micro)

## Networking
- VPC CIDR: 10.0.0.0/16
- Public Subnet 1: 10.0.1.0/24 (eu-north-1a)
- Public Subnet 2: 10.0.2.0/24 (eu-north-1b)
- Private Subnet 1: 10.0.3.0/24 (eu-north-1a)
- Private Subnet 2: 10.0.4.0/24 (eu-north-1b)

## Security
- ALB accepts HTTP/HTTPS from internet
- EC2 only accepts traffic from ALB
- RDS only accepts traffic from EC2
- Database not publicly accessible

## Auto Scaling
- Desired: 2 instances
- Minimum: 1 instance
- Maximum: 4 instances
- Scale up when CPU > 50%

## Key lessons
- Always use custom VPC in production
- Private subnets protect databases from internet
- Security groups chain: ALB → EC2 → RDS
- Auto Scaling ensures high availability
- Load Balancer distributes traffic across AZs