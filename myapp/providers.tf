terraform {
  required_providers { 
    azurerm = {
      source = "hasicorp/azurerm"
      version = "~> 2.65"
    }
  }
}
terraform {
  backend "azurerm" {
  }
}
provider "azurerm" { 
  features {}
}