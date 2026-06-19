# Day 2 Notes — EC2 + Linux Basics + AWS CLI

## What I built
- Launched first EC2 instance (t3.micro)
- Connected via EC2 Instance Connect and SSH
- Installed AWS CLI
- Created S3 bucket from terminal
- Wrote and ran a bash deploy script

## EC2 setup
- AMI: Amazon Linux 2023
- Instance type: t3.micro (free tier)
- Key pair: my-key.pem
- Security group: ssh-access (port 22)
- Region: eu-north-1 (Stockholm)

## Linux commands learned
- whoami — show current user
- pwd — show current directory
- ls -la — list files with permissions
- mkdir — create folder
- touch — create empty file
- cp — copy file
- mv — move or rename file
- rm — delete file
- cat — print file contents
- echo — print text or write to file
- chmod — change permissions
- uname -a — show system info

## AWS CLI commands
- aws configure — set credentials
- aws s3 ls — list buckets
- aws s3 mb — create bucket
- aws s3 cp — upload file
- aws s3 sync — sync folder to bucket

## Bash deploy script
- Created deploy.sh
- Uses aws s3 sync to upload files
- chmod +x to make it executable
- Run with ./deploy.sh

## Key lesson
IAM roles are better than hardcoded credentials.
EC2 public IP changes every time you start a stopped instance.