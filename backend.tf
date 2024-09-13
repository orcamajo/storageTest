terraform {
  backend "azurerm" {
    resource_group_name  = "rg-storage-prod"
    storage_account_name = "stotfprod"
    container_name       = "tfstate"
    key                  = "storageTest.tfstate"
  }
}