terraform {
  required_providers { 
    azurerm = {
      source = "hasicorp/azurerm"
      version = "~> 2.65"
    }
  }
  required_version = ">= 0.14.9"
}
terraform {
  backend "azurerm" {
  }
}
provider "azurerm" { 
  features {}
}