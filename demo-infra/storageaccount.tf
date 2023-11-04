resource "azurerm_storage_account" "sa" {
  name                     = "${var.base_name}${var.sa_name}${random_string.random_string.result}"
  resource_group_name      = azurerm_resource_group.rg-infra.name
  location                 = azurerm_resource_group.rg-infra.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "sc" {
  name                  = "${var.base_name}${var.sc_name}"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}