provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "acr_rg" {
  name     = "rg-acr"
  location = "East US"
}

resource "azurerm_container_registry" "acr" {
  name                = "exampleacr${random_string.suffix.result}"
  resource_group_name = azurerm_resource_group.acr_rg.name
  location            = azurerm_resource_group.acr_rg.location
  sku                 = "Basic"
  admin_enabled       = true
}

resource "random_string" "suffix" {
  length  = 8
  special = false
}
