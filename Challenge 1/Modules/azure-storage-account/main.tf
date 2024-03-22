resource "azurerm_storage_account" "storage" {
  name                             = var.name
  resource_group_name              = var.resource_group_name
  location                         = var.location 
  account_kind                     = var.account_kind
  account_tier                     = var.account_tier
  public_network_access_enabled    = var.public_network_access_enabled    
}
