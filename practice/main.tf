
provider "azurerm" {
  version = "=2.18.0"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "info_test_rg1"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "infostorageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
