# Day 5 Notes — HTTPS + Domain

## What I built
- Created free domain on No-IP: admin-hani.ddns.net
- Added HTTPS with Let's Encrypt (free SSL certificate)
- Certificate auto-renews every 90 days
- Portfolio now live at https://admin-hani.ddns.net

## Certbot commands
- sudo dnf install certbot python3-certbot-nginx -y
- sudo certbot --nginx -d admin-hani.ddns.net
- sudo certbot install --cert-name admin-hani.ddns.net

## SSL Certificate details
- Provider: Let's Encrypt (free)
- Certificate location: /etc/letsencrypt/live/admin-hani.ddns.net/
- Expires every 90 days
- Auto-renews via scheduled task

## Nginx config
- server_name directive must match domain name
- sudo nginx -t — test config before reloading
- sudo systemctl reload nginx — apply changes

## SCP command (copy files between laptop and EC2)
- scp -i key.pem ec2-user@IP:/remote/path /local/path
- Run from local machine, NOT from inside EC2
- ssh = connect to server
- scp = copy files, run locally

## Security group ports
- Port 22 — SSH
- Port 80 — HTTP
- Port 443 — HTTPS
