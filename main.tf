# Import Blocks
import {
  id = "/subscriptions/a9a569e9-8a08-40ff-b3ae-176f28abca12/resourceGroups/rg-storage-prod"
  to = azurerm_resource_group.rsg
}

import {
  id = "/subscriptions/a9a569e9-8a08-40ff-b3ae-176f28abca12/resourceGroups/rg-storage-prod/providers/Microsoft.Storage/storageAccounts/stotfprod"
  to = azurerm_storage_account.stoprod
}

#Resource group

resource "azurerm_resource_group" "rsg" {
  location   = var.loc
  managed_by = null
  name       = var.rgname
  tags = {
    environment = var.env
  }
}

# Storage account

resource "azurerm_storage_account" "stoprod" {
  name                             = "stotfprod"
  resource_group_name              = azurerm_resource_group.rsg.name
  location                         = azurerm_resource_group.rsg.location
  account_tier                     = var.tier
  account_replication_type         = var.replication
  allow_nested_items_to_be_public  = false
  cross_tenant_replication_enabled = false

  tags = {
    environment = var.env
  }
}