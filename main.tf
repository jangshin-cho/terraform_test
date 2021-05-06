terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }

  backend "azurerm" {
    resource_group_name   = "tstate"
    storage_account_name  = "tstate13875"
    container_name        = "tstate"
    key                   = "terraform.tfstate"
  }
  
  required_version = ">= 0.14.9"
  
}

provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "terraform-cli" {
  
  name     = "terraform-cli"
  location = "koreacentral"
  
}
