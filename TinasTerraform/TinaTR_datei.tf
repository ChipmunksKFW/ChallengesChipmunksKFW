terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "tinaExample" {
  name     = "tinaExample-resources"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "tinaExample" {
  name                = "tinaExample-network"
  resource_group_name = azurerm_resource_group.tinaExample.name
  location            = azurerm_resource_group.tinaExample.location
  address_space       = ["10.0.0.0/16"]
}
