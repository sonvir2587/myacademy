module "resource_group" {
  source = "../module/resource_group"
  rg_name = "master1"
  location = "eastus"
}

module "storage_account" {
  source = "../module/storage_account"
  storage_account_name = "masterstg"
  location = "eastus"
  rg_name = "master1"
}