resource "azurerm_servicebus_queue" "basic" {
  count = "${var.servicebus_namespace_sku == "Basic" ? 1 : 0}"
  name         = "${var.servicebus_queue_name}"
  namespace_id = "${data.azurerm_servicebus_namespace.main.id}"

}

resource "azurerm_servicebus_queue_authorization_rule" "basic_send_auth_rule" {
  count = "${var.servicebus_namespace_sku == "Basic" ? 1 : 0}"
  name     = "SendSharedAccessKey"
  queue_id = "${azurerm_servicebus_queue.basic[count.index].id}"

  send = true
}

resource "azurerm_servicebus_queue_authorization_rule" "basic_listen_auth_rule" {
  count = "${var.servicebus_namespace_sku == "Basic" ? 1 : 0}"
  name     = "ListenSharedAccessKey"
  queue_id = "${azurerm_servicebus_queue.basic[count.index].id}"

  listen = true
}

resource "azurerm_servicebus_queue_authorization_rule" "basic_manage_auth_rule" {
  count = "${var.servicebus_namespace_sku == "Basic" ? 1 : 0}"
  name     = "ManageSharedAccessKey"
  queue_id = "${azurerm_servicebus_queue.basic[count.index].id}"

  send   = true
  listen = true
  manage = true
}