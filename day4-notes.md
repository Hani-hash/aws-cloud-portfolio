# Day 4 Notes — Nginx Web Server + Linux Process Management

## What I built
- Installed nginx web server on EC2
- Served a custom HTML/CSS portfolio page
- Hosted profile photo on S3
- Set up Elastic IP for permanent instance address

## Nginx commands
- sudo dnf install nginx -y — install nginx
- sudo systemctl start nginx — start nginx
- sudo systemctl stop nginx — stop nginx
- sudo systemctl restart nginx — stop then start
- sudo systemctl reload nginx — reload config no downtime
- sudo systemctl enable nginx — auto start on reboot
- sudo systemctl status nginx — check if running
- sudo systemctl is-enabled nginx — check if auto-start is on

## Important paths
- /usr/share/nginx/html/ — where nginx serves files from
- /etc/nginx/nginx.conf — nginx configuration file

## S3 image hosting
- Uploaded profile photo to S3 bucket
- Disabled Block Public Access
- Added bucket policy for public read
- Used S3 URL directly in HTML img tag

## Elastic IP
- Static public IP that never changes
- Free when attached to running instance
- Charges ~$0.005/hour if instance is stopped
- Solves the changing IP problem on stop/start

## Linux commands learned
- sudo dnf install — install packages
- systemctl — manage services
- scp — copy files between local and remote server
- grep root /etc/nginx/nginx.conf — find config values

## Key lessons
- Amazon Linux 2023 nginx serves from /usr/share/nginx/html
- systemctl enable makes services survive reboots
- S3 bucket policy is better practice than public ACLs
- Elastic IP is essential for a stable lab environment