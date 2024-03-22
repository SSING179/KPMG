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
  subscription_id = <non_prod_subscription_id>
  features {}
}

provider "azurerm" {
  alias = "staging"
  subscription_id = <staging_subscription_id>
  features {}
}

provider "azurerm" {
  alias = "prod"
  subscription_id = <prod_subscription_id>
  features {}
}
