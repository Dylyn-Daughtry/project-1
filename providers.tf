terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.46.0"
    }
    aws = {
        source = "hashicorp/aws"
        version = "4.57.0"
    }
  }
}

provider "azurerm" {
    features {}
}

provider "aws" {
  
}