# Project 4 — CI/CD Pipeline with Docker + ECS Fargate

## Architecture

git push → GitHub Actions → ECR → ECS Fargate → Live app


## Services used
- Docker — containerize the Flask app
- Amazon ECR — private container image registry
- Amazon ECS — container orchestration
- AWS Fargate — serverless container runtime
- GitHub Actions — CI/CD automation
- IAM — permissions for GitHub to deploy to AWS

## What gets automated on every git push
1. GitHub Actions triggers automatically
2. Builds new Docker image
3. Tags with git commit SHA
4. Pushes to ECR
5. Updates ECS task definition
6. Deploys to Fargate with zero downtime

## Docker commands learned
- docker build -t name . — build image from Dockerfile
- docker run -d -p 8080:80 name — run container
- docker ps — list running containers
- docker ps -a — list all containers including stopped
- docker images — list local images
- docker stop name — stop container
- docker rm name — remove container
- docker logs name — view container logs
- docker exec -it name bash — enter running container
- docker tag — tag image for registry
- docker push — push image to registry

## Dockerfile structure
- FROM — base image
- WORKDIR — working directory inside container
- COPY — copy files into container
- RUN — execute commands during build
- EXPOSE — document which port app uses
- CMD — command that runs when container starts

## Key concepts
- Image vs Container: Image = recipe, Container = running instance
- Registry: where images are stored (ECR = private, Docker Hub = public)
- Fargate: serverless containers, no EC2 to manage
- Task Definition: tells ECS what image to run and how
- Service: keeps desired number of tasks running

## GitHub Actions
- Workflow file: .github/workflows/deploy.yml
- Triggers on push to main when project4-docker-app/ changes
- Uses GitHub Secrets for AWS credentials (never hardcoded)
- Uses git commit SHA as image tag for traceability

## Key lessons
- Never put AWS credentials in code — use GitHub Secrets
- enableFaultInjection field must be stripped from task definition JSON
- HTTP vs HTTPS — Flask runs HTTP, browser may auto-upgrade to HTTPS
- Service-linked role must exist before creating ECS cluster
- IAM roles need ECR + ECS permissions for deployment

## Cost
- ECR: ~$0.10/GB/month storage
- ECS Fargate: pay per vCPU/memory per second
- 0.25 vCPU + 0.5GB = ~$0.01/hour
- Stop the service when not using to save cost!