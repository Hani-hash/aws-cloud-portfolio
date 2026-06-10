# Day 3 Notes — IAM Roles + Linux Permissions

## IAM Role
- Created role: ec2-s3-readonly
- Attached to EC2 instance
- Removed hardcoded credentials
- EC2 now uses role automatically via credential chain

## AWS Credential Chain order
1. Hardcoded keys
2. Environment variables
3. IAM role attached to instance

## Linux Users
- useradd — create a user
- passwd — set password
- su - username — switch user
- exit — go back to previous user

## Linux Permissions
- chmod 700 — owner only (private keys)
- chmod 644 — owner write, all read (web files)
- chmod 755 — owner write, all execute (folders)
- chmod 400 — owner read only (.pem files)
- chown — change file owner

## Key lesson
Permissions work at every level of the path.
Need execute on every directory AND read on the file.