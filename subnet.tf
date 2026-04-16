resource "azurerm_subnet" "pvt-subnet" {
  name                 = "rksteel-dev-pvt_subnet"
  resource_group_name  = azurerm_resource_group.resgroup.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]

}


resource "azurerm_subnet" "pub-subnet" {
  name                 = "rksteel-dev-pub_subnet"
  resource_group_name  = azurerm_resource_group.resgroup.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]

}



