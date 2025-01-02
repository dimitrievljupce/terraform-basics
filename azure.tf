resource "azurerm_resource_group" "rg" {
  name     = "test-rg"
  location = "West Europe"
  tags = {
    environment = "dev"
  }
}

resource "azurerm_virtual_network" "vn" {
  name                = "test-vn"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.123.0.0/16"]

  tags = {
    environment = "dev"
  }
}