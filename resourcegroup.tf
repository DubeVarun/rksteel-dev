resource "azurerm_resource_group" "resgroup" {
  name     = "rksteel-dev-rg"
  location = "Central India"

  tags = {
    environment = "test"
    managedby   = "rksteel"
  }
}

