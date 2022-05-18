resource "azurerm_servicebus_queue" "standard" {
  count = "${var.servicebus_namespace_sku == "Standard" ? 1 : 0}"
  name         = "${var.servicebus_queue_name}"
  namespace_id = "${data.azurerm_servicebus_namespace.main.id}"

  lock_duration                           = "${var.servicebus_queue_lock_duration}"
  max_delivery_count                      = "${var.servicebus_queue_max_delivery_count}"
  requires_duplicate_detection            = "${var.servicebus_queue_requires_duplicate_detection}"
  duplicate_detection_history_time_window = "${var.servicebus_queue_duplicate_detection_history_time_window}"

  max_size_in_megabytes                = "${var.servicebus_queue_max_size_in_megabytes}"
  requires_session                     = "${var.servicebus_queue_requires_session}"
  default_message_ttl                  = "${var.servicebus_queue_default_message_ttl}"
  dead_lettering_on_message_expiration = "${var.servicebus_queue_dead_lettering_on_message_expiration}"
  auto_delete_on_idle                  = "${var.servicebus_queue_auto_delete_on_idle}"
  enable_partitioning                  = "${var.servicebus_queue_enable_partitioning}"
  enable_express                       = "${var.servicebus_queue_enable_express}"
}

resource "azurerm_servicebus_queue_authorization_rule" "standard_send_auth_rule" {
  count = "${var.servicebus_namespace_sku == "Standard" ? 1 : 0}"
  name     = "SendSharedAccessKey"
  queue_id = "${azurerm_servicebus_queue.standard[count.index].id}"

  send = true
}

resource "azurerm_servicebus_queue_authorization_rule" "standard_listen_auth_rule" {
  count = "${var.servicebus_namespace_sku == "Standard" ? 1 : 0}"
  name     = "ListenSharedAccessKey"
  queue_id = "${azurerm_servicebus_queue.standard[count.index].id}"

  listen = true
}

resource "azurerm_servicebus_queue_authorization_rule" "standard_manage_auth_rule" {
  count = "${var.servicebus_namespace_sku == "Standard" ? 1 : 0}"
  name     = "ManageSharedAccessKey"
  queue_id = "${azurerm_servicebus_queue.standard[count.index].id}"

  send   = true
  listen = true
  manage = true
}