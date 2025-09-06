module "resource_group" {
  source   = "../module/resource_group"
  rg_name  = "master1"
  location = "eastus"
}

module "storage_account" {
  source               = "../module/storage_account"
  storage_account_name = "masterstorage"
  location             = "eastus"
  rg_name              = "master1"
}


module "virtual_network" {
  source        = "../module/virtual_network"
  vnet_name     = "mastervnet"
  address_space = ["10.0.0.0/16"]
  rg_name       = "master1"
  vnet_location = "eastus"
}

module "virtual_subnet" {
  source           = "../module/virtual_subnet"
  subnet_name      = "mastersubnet"
  rg_name          = "master1"
  vnet_name        = "mastervnet"
  address_prefixes = ["10.0.1.0/24"]
  nic_name         = "masternic"
  nic_location     = "eastus"
}

module "virtual_public_ip" {
  source = "../module/virtual_public_ip"
  pip_name = "masterpip"
  rg_name = "master1"
  pip_location = "eastus"
}
