module "resource_group" {
  source = "../../modules/resource-group"

  name     = "rg-${var.project_name}-${var.environment}"
  location = var.location

  tags = {
    Environment = var.environment
    Project     = var.project_name
    ManagedBy   = "Terraform"
    Owner       = "DevOps"
  }
}
module "network" {
  source = "../../modules/network"

  vnet_name           = "vnet-${var.project_name}-${var.environment}"
  location            = var.location
  resource_group_name = module.resource_group.name

  address_space = ["10.10.0.0/16"]

  app_subnet_name = "snet-app"
  app_subnet_address_prefixes = [
    "10.10.1.0/24"
  ]

  management_subnet_name = "snet-management"
  management_subnet_address_prefixes = [
    "10.10.2.0/24"
  ]

  tags = {
    Environment = var.environment
    Project     = var.project_name
    ManagedBy   = "Terraform"
    Owner       = "DevOps"
  }
}