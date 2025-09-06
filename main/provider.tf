terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rgmaster"
    storage_account_name = "masterstg"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

  }
}

provider "azurerm" {
  features {}
  subscription_id = "ecf1c36f-8eba-469e-841f-a595c299e914"
}