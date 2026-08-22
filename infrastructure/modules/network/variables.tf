variable "vnet_name" {
  description = "Name of the Azure virtual network."
  type        = string
}

variable "location" {
  description = "Azure region for the virtual network."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
}

variable "app_subnet_name" {
  description = "Name of the application subnet."
  type        = string
}

variable "app_subnet_address_prefixes" {
  description = "Address prefixes for the application subnet."
  type        = list(string)
}

variable "management_subnet_name" {
  description = "Name of the management subnet."
  type        = string
}

variable "management_subnet_address_prefixes" {
  description = "Address prefixes for the management subnet."
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to the virtual network."
  type        = map(string)
  default     = {}
}