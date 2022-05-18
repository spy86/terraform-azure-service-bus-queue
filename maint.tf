data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}"
}

data "azurerm_servicebus_namespace" "main" {
    name                = "${var.servicebus_namespace_name}"
    resource_group_name = "${data.azurerm_resource_group.rg.name}"
  }