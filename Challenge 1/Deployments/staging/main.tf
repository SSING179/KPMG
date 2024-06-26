resource "azurerm_resource_group" "staging_rg" {
  provider = azurerm.staging
  name     = "Staging-RG"
  location = "East US"
}

module "staging-sa" {
  source              = "../../Modules/azure-storage-account"
  provider            = azurerm.staging
  name                = "staging-sa-eastus-001"
  resource_group_name = azurerm_resource_group.staging_rg.name
  location            = azurerm_resource_group.staging_rg.location
  account_tier        = "Standard"
  account_kind        = "StorageV2"
}
