terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg0111"
    storage_account_name = "storageee112345"  # <- use module output
    container_name       = "container01111"
    key                  = "tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c8e9529b-812c-42b7-89ab-4c49d4e5a210"
}