resource "azurerm_resource_group" "rg01" {
  name     = "rg-${var.proj_code}"
  location = var.location
}
