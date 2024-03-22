terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=3.30.0"
    }
  }
}

provider "azurerm" {
  alias = "non-prod"
  subscription_id = var.non_prod_subscription_id
  features {}
}

provider "azurerm" {
  alias = "staging"
  subscription_id = var.staging_subscription_id
  features {}
}

provider "azurerm" {
  alias = "prod"
  subscription_id = var.prod_subscription_id
  features {}
}
