terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }


}

provider "azurerm" {
  features {}
  subscription_id = "ddf379db-e128-4db6-a12a-278fbaca3283"
}