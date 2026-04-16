resource "azurerm_storage_account" "storetfstate" {
  name                     = "rksteeldevtfstate2026"
  resource_group_name      = azurerm_resource_group.resgroup.name
  location                 = azurerm_resource_group.resgroup.location
  account_tier             = "Standard"
  account_replication_type = "LRS"


  allow_nested_items_to_be_public = false

  network_rules {
    default_action = "Deny"
    bypass         = ["AzureServices"]

    ip_rules = ["103.208.70.184"]
  }

  tags = {
    environment = "test"
    managedby   = "rksteel"
  }
}


resource "azurerm_storage_container" "containtfstate" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.storetfstate.id
  container_access_type = "private"
}