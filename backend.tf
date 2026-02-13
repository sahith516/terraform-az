terraform {
  backend "azurerm" {
    resource_group_name  = "tf-backend-rg"
    storage_account_name = "tfbackendstorage123"
    container_name       = "tfstate"
    key                  = "canadacentral-vm.tfstate"
  }
}
