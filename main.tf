terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
  }
}

module "resource_group_storage" {
  source               = "Volodymyrdv/resource_group_storage/azurerm"
  version              = "1.0.0"
  location             = "polandcentral"
  resource_group_name  = "rg-storage"
  storage_account_name = "valodya33"
}