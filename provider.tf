terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.66.0"

    }
  }
      backend "azurerm" {
       resource_group_name  = "rg-state"
       storage_account_name = "statefilestore454"
       container_name       = "tfstate"
       key                  = "rk.dev.tfstate"
    }
}

provider "azurerm" {
  features {}

}
