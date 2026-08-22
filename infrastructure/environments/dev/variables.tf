variable "location" {
  description = "Azure region for the environment."
  type        = string
  default     = "eastus"
}

variable "environment" {
  description = "Environment name."
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name used for resource naming."
  type        = string
  default     = "enterprise-devsecops"
}