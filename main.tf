terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = ""
  tenant_id       = var.tenant_id
}

resource "azurerm_resource_group" "rg" {
  name     = "MT-VM-Solution"
  location = "Australia East"
}	