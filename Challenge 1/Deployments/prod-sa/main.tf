resource "azurerm_resource_group" "prod_rg" {
  provider = azurerm.prod
  name     = "Prod-RG"
  location = "East US"
}

module "prod-sa" {
  source              = "../../Modules/azure-storage-account"
  provider            = azurerm.prod
  name                = "prod-sa-eastus-001"
  resource_group_name = azurerm_resource_group.prod_rg.name
  location            = azurerm_resource_group.prod_rg.location
  account_tier        = "Standard"
  account_kind        = "StorageV2"
}
