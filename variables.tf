# Location
variable "loc" {
  type        = string
  default     = "eastus"
  description = "Azure Region"
}

# Environment
variable "env" {
  type        = string
  default     = "prod"
  description = "Deploy in dev,qa or prod"
}


# Resource Group Name
variable "rgname" {
  type        = string
  default     = "rg-storage-prod"
  description = "Named of the resource group"
}

# Storage Account
variable "tier" {
  type        = string
  default     = "Standard"
  description = "Account tier"
}
variable "replication" {
  type        = string
  default     = "LRS"
  description = "Account replication"
}
