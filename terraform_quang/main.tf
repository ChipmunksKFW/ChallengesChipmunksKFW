# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
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
resource "azurerm_resource_group" "new_resource_group" {
  name     = "group"
  location = "West Europe"
}

# Create ACR
resource "azurerm_container_registry" "new_acr" {
  name                = "chipmunks123"
  resource_group_name = azurerm_resource_group.new_resource_group.name
  location            = azurerm_resource_group.new_resource_group.location
  sku                 = "Standard"
  admin_enabled       = false
}