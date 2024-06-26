resource "azurerm_resource_group" "non_prod_rg" {
  provider = azurerm.non_prod
  name     = "Non-Prod-RG"
  location = "East US"
}

module "non-prod-sa" {
  source              = "../../Modules/azure-storage-account"
  provider            = azurerm.non_prod
  name                = "non-prod-sa-eastus-001"
  resource_group_name = azurerm_resource_group.non_prod_rg.name
  location            = azurerm_resource_group.non_prod_rg.location
  account_tier        = "Standard"
  account_kind        = "StorageV2"
}
