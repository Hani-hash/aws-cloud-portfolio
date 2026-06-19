# AWS Cloud Engineer Portfolio — Hani Khamees

Hands-on AWS projects built from scratch while learning cloud engineering.
Every project is deployed on real AWS infrastructure, documented, and
where possible automated with Infrastructure as Code.

## Live Site
https://admin-hani.ddns.net

## Contact
- Email: hani.khamees@web.de
- GitHub: https://github.com/Hani-hash
- LinkedIn: https://www.linkedin.com/in/hani-khamees-855015132/

---

## Projects

### Project 1 — Static Website (S3 + CloudFront)
A personal portfolio site hosted entirely on AWS with HTTPS and a CDN.

**Services:** S3, CloudFront, ACM, No-IP (DNS)
**Notes:** see `week1-notes.md` to `week5-notes.md`

### Project 2 — 3-Tier Web Application
A highly available web application running across two Availability Zones,
with traffic distributed by a load balancer and auto-scaled EC2 instances
backed by a private RDS MySQL database.

**Architecture:**
```
Internet → Load Balancer → Auto Scaling Group (EC2 x2 AZs) → RDS MySQL (private subnet)
```

**Services:** VPC, ALB, Auto Scaling, EC2, RDS MySQL
**Infrastructure as Code:** Terraform (`terraform-project2/`) and CloudFormation (`project2-cloudformation1.yaml`)
**Notes:** see `project2-notes.md`

### Project 3 — Serverless REST API
A fully serverless guestbook API — no servers to manage, scales automatically,
near-zero cost. Live and interactive on the portfolio site above.

**Architecture:**
```
Client → API Gateway → Lambda (Python) → DynamoDB
```

**Services:** API Gateway (HTTP API), Lambda, DynamoDB, IAM
**Notes:** see `project3-notes.md`

---

## Skills Demonstrated
AWS EC2 · S3 · IAM · VPC · RDS · Lambda · API Gateway · DynamoDB ·
CloudFront · Auto Scaling · Load Balancing · CloudFormation · Terraform ·
Linux · Bash Scripting · Nginx · MySQL · Git · AWS CLI

## Certifications
- AWS Certified Cloud Practitioner — in progress
- AWS Certified Solutions Architect Associate — planned

## Repo Structure
```
.
├── index.html                     → portfolio site source
├── deploy.sh                      → S3 deploy script (Project 1)
├── project2-notes.md              → Project 2 documentation
├── project2-cloudformation1.yaml  → Project 2 CloudFormation template
├── project3-notes.md              → Project 3 documentation
├── terraform-project2/            → Project 2 Terraform code
└── week1-notes.md ... week6-notes.md → daily learning notes
```
