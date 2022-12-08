terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.88.1"
    } 
  }
  backend "azurerm" {
    resource_group_name = "tfstate111"
    storage_account_name = "tfstatestore20111"
    container_name = "tfstate"
    key = "terraform.tfstate"  
  }
}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "resourcegroup" {
  location = var.location
  name     = var.rsgname
}