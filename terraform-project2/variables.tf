variable "db_password" {
  description = "RDS MySQL password"
  type        = string
  sensitive   = true
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "project_name" {
  description = "Project name used for naming resources"
  type        = string
  default     = "project2"
}