terraform {
  required_providers { 
    azurerm = {
      source = "hasicorp/azurerm"
      version = "~> 2.65"
    }
  }
}
provider "azurerm" { 
  features {}
}