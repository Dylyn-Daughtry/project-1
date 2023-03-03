provider "azurerm" {
  features {}
}

resource "azuread_user" "Gregory Daughtry" {
  user_principal_name = "gregory.daughtry@fdmgroup.com"
  display_name        = "Dylyn"
  mail_nickname       = "Dylyn@"
  password            = "test12345"
}

resource "azuread_user" "Ibrahim Ozbekler" {
  user_principal_name = "Ibrahim.Ozbeckler@fdmgroup.com"
  display_name        = "Ibrahim"
  mail_nickname       = "Ibrahim@"
  password            = "test12345"
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "RG1" {
    name = "RG1"
    location = "East US"
  
}