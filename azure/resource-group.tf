resource "azurerm_resource_group" "rg" {
  name     = "test-rg"
  location = "West Europe"
  tags = {
    environment = "dev"
  }
}