# AWS Cloud Engineer Portfolio — Hani Khamees

Hands-on AWS projects built from scratch, documented end-to-end,
and automated with Infrastructure as Code. Every project runs on
real AWS infrastructure.

##  Live Site
https://admin-hani.ddns.net

##  Contact
- Email: hani.khamees@web.de
- GitHub: https://github.com/Hani-hash
- LinkedIn: https://www.linkedin.com/in/hani-khamees-855015132/

---

## Projects

### ✅ Project 1 — Static Website (S3 + CloudFront)
A personal portfolio site hosted entirely on AWS — serverless,
HTTPS, global CDN delivery, automated deployment script.

**Architecture:**
Browser → Route 53 → CloudFront (HTTPS + CDN) → S3 (private origin)

**Services:** S3, CloudFront, ACM, No-IP, AWS CLI
**IaC:** bash deploy script (`deploy.sh`)

---

### ✅ Project 2 — 3-Tier Web Application
Highly available web application across 2 Availability Zones
with auto-scaling and a private RDS database. Full infrastructure
automated with both Terraform and CloudFormation.

**Architecture:**
Internet → ALB → Auto Scaling Group (EC2 x2 AZs) → RDS MySQL (private subnet)

**Services:** VPC, ALB, Auto Scaling, EC2, RDS MySQL
**IaC:** Terraform (`terraform-project2/`) + CloudFormation (`project2-cloudformation1.yaml`)

---

### ✅ Project 3 — Serverless REST API
A fully serverless guestbook API — no servers, scales automatically,
near-zero cost. Live and interactive on the portfolio site.

**Architecture:**
Client → API Gateway (HTTP API) → Lambda (Python) → DynamoDB

**Services:** API Gateway, Lambda, DynamoDB, IAM, CloudWatch
**Live demo:** https://admin-hani.ddns.net (sign the guestbook!)

---

### ✅ Project 4 — CI/CD Pipeline with Docker + ECS Fargate
Automated deployment pipeline — push code to GitHub and it
automatically builds a Docker image, pushes to ECR, and deploys
to ECS Fargate. Zero manual steps, zero servers to manage.

**Architecture:**
git push → GitHub Actions → Docker build → ECR → ECS Fargate → Live app

**Services:** Docker, ECR, ECS Fargate, GitHub Actions, IAM
**Pipeline:** `.github/workflows/deploy.yml`

---

##  Skills

**AWS Services:**
EC2 · S3 · VPC · RDS · Lambda · API Gateway · DynamoDB ·
CloudFront · Auto Scaling · ALB · ECS · ECR · Fargate ·
CloudFormation · IAM · CloudWatch · ACM

**DevOps & Tools:**
Docker · Terraform · GitHub Actions · Bash · Linux · Nginx ·
Git · AWS CLI · Python

**Concepts:**
High Availability · Infrastructure as Code · Serverless ·
CI/CD · Containerization · Network Security · Cost Optimization

---

##  Certifications
- AWS Certified Cloud Practitioner — in progress (retake scheduled)
- AWS Certified Solutions Architect Associate — planned

---

##  Repository Structure
.
├── index.html                      → portfolio site source
├── deploy.sh                       → S3 deploy script (Project 1)
├── project2-notes.md               → Project 2 documentation
├── project2-cloudformation1.yaml   → Project 2 CloudFormation
├── project3-notes.md               → Project 3 documentation
├── project4-notes.md               → Project 4 documentation
├── terraform-project2/             → Project 2 Terraform code
├── project4-docker-app/            → Project 4 Flask app + Dockerfile
├── .github/workflows/deploy.yml    → GitHub Actions CI/CD pipeline
└── week1-notes.md ... week6-notes.md → learning notes