# Day 1 Notes — AWS Account Setup

## What I did
- Created AWS account
- Enabled MFA on root account
- Created IAM admin user
- Set billing alarm via AWS Budgets
- Logged in as IAM user instead of root

## Key concepts learned

### Root account
- Most powerful account in AWS
- Should never be used day-to-day
- Always protect with MFA

### IAM user
- Created admin-user user
- Attached AdministratorAccess policy
- Used for all daily work

### Billing alarm
- Created zero spend budget
- Alerts via email on any charge
- Essential before touching any service

### MFA
- Multi-factor authentication
- Extra layer of security
- Required on both root and IAM user

## Key lesson
Never use root for daily work.
Always create an IAM user and work from there.