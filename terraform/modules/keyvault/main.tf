
data "azurerm_subscription" "current" {
}

resource "azurerm_key_vault" "kv" {
  name                        = "kv-${var.name}"
  location                    = var.location
  resource_group_name         = var.rg
  enabled_for_disk_encryption = true
  tenant_id                   = azurerm_subscription.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"
}
