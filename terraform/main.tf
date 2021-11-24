terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.84.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "cfe-mb-tf-infra"
    storage_account_name = "cfembtfinfra1660"
    container_name       = "tfstate"
    key                  = "gh_demo.tfstate"
  }
}

provider "azurerm" {
  features {}
}
