resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = var.nic_location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnetid
    private_ip_address_allocation = "Dynamic"
  }
}