resource "azurerm_resource_group" "rg01" {
  name     = "rg-${var.proj_code}"
  location = var.location
}

module "kv01" {
  source   = "./modules/keyvault"
  name     = "${var.proj_code}-01"
  location = var.location
  rg       = azurerm_resource_group.rg01.name
}
