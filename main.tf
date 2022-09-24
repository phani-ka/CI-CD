terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.23.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "RG" {
  name     = "RG-resources12345"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "RG" {
  name                = "RG-network"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  address_space       = ["10.0.0.0/16"]

  }