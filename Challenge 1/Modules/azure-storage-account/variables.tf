
variable "name" {
  type        = string
  description = "Name of the Storage Account."
}

variable "location" {
  type        = string
  description = "Region to deploy into."
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group to create in."
}

variable "account_tier" {
  type        = string
  description = "Performance tier. Can Standard or Premium."
  default     = "Standard"
}

variable "account_kind" {
  type        = string
  description = "Kind of account. Can be Storage, StorageV2, BlobStorage, or FileStorage."
  default     = "StorageV2"
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Whether the public network access is enabled"
  default     = false
}
