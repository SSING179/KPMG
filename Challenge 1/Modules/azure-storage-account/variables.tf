
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

variable "non_prod_subscription_id" {
  type        = string
  description = "non_prod_subscription_id
  default     = "<non_prod_subscription_id>"
}

variable "staging_subscription_id" {
  type        = string
  description = "staging_subscription_id
  default     = "<staging_subscription_id>"
}

variable "prod_subscription_id" {
  type        = string
  description = "prod_subscription_id
  default     = "<prod_subscription_id>"
}
