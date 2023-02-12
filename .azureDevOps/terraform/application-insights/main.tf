resource "azurerm_application_insights" "adl_appi" {
  name                = "appi-${var.basename}"
  location            = var.location
  resource_group_name = var.rg_name
  application_type    = var.application_type

  internet_ingestion_enabled = var.internet_ingestion_enabled
  internet_query_enabled     = var.internet_query_enabled

  tags = var.tags
}