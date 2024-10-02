terraform {
  backend "azurerm" {
    resource_group_name  = "rg-backend"
    storage_account_name = "tfstateaccount"
    container_name       = "tfstate"
    key                  = "acr.terraform.tfstate"
  }
}
