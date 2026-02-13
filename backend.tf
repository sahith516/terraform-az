terraform {
  backend "azurerm" {
    resource_group_name  = "sahith"
    storage_account_name = "sahithstorage516"
    container_name       = "tfstate"
    key                  = "canadacentral-vm.tfstate"
  }
}
