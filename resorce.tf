resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = var.rg_name
}

variable "location" {
  default = "westus"
  type    = string
}
variable "rg_name" {
  default = "testaztf"
  type    = string
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.address_space
}

variable "address_space" {
  default = ["10.0.0.0/16"]
  type    = list(string)
}
variable "vnet_name" {
  default = "tf_vnet"
  type    = string
}
resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = var.vnet_name
  address_prefixes     =["10.1.1.0/24"]
  depends_on=[azurerm_virtual_network.vnet]
}

variable address_prefixes{
	default = ["10.1.1.0/24"]
	type = list(string)
}
variable subnet_name{
	default = "tf_subnet"
	type = string
}

