terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
    /*random = {
      source = "hashicorp/random"
    }*/
    null = {
      source = "hashicorp/null"
    }
  }
  backend "azurerm" {
    ##name of the resource group where we created the container
    resource_group_name = "terraformstage"
    #inside the rg we create a storage account
    storage_account_name = "terraformststage"
    #inside the storage account we created a cotnainer
    container_name = "tfstatefiles"
    #key is the file name which will be created and you are going to store your statefile content inside that
    key = "project.tfstate"
  }

}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
