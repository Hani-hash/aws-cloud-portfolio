# AWS Cloud Portfolio



## Project 1 — Static Website on S3 + CloudFront

## Live Site
https://admin-hani.ddns.net

### Architecture
- S3 — stores website files
- CloudFront — CDN and HTTPS
- Route 53 — custom domain and DNS
- ACM — free SSL certificate

### What I built
A personal portfolio site hosted on AWS with a custom domain,
HTTPS, and global CDN delivery.

### Deploy script
The deploy.sh script syncs local files to S3 automatically:
```bash
./deploy.sh
```

### Cost
Approximately $0.50/month

### Services used
AWS S3, CloudFront, NO-IP, ACM, IAM, AWS CLI
