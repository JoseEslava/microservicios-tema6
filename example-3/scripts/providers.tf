# set the Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.51.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "xxxxxxxxxxxx-xxxxxxxxxxx-xxxxxxxxxx-xxxxxxx"
}
