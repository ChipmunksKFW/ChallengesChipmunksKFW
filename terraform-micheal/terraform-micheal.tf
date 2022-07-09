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

  subscription_id = "246265f0-7681-41bf-b5d9-45b24bf01e75"
  tenant_id       = "bfe3e775-4326-4a0a-92dc-b73064a9ce24"
}

# Create a resource group
resource "azurerm_resource_group" "michealexample2" {
  name     = "michealexample2-resources"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "michealexample2" {
  name                = "michealexample2-network"
  resource_group_name = azurerm_resource_group.michealexample2.name
  location            = azurerm_resource_group.michealexample2.location
  address_space       = ["10.0.0.0/16"]
}