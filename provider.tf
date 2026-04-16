terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.66.0"

    }
  }
  #    backend "azurerm" {
  #     resource_group_name  = "rksteel-dev-rg"
  #     storage_account_name = "rksteeltfstate2026"
  #     container_name       = "tfstate"
  #     key                  = "terraform.tfstate"
  #   }
}

provider "azurerm" {
  features {}

}