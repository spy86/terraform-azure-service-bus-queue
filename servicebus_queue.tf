locals {
  send_auth_rule_name   = "SendSharedAccessKey"
  listen_auth_rule_name = "ListenSharedAccessKey"
  manage_auth_rule_name = "ManageSharedAccessKey"
}

data "azurerm_servicebus_namespace" "main" {
    name                = "${var.servicebus_namespace_name}"
    resource_group_name = "${data.azurerm_resource_group.rg.name}"
  }

resource "azurerm_servicebus_queue" "main" {
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

resource "azurerm_servicebus_queue_authorization_rule" "send_auth_rule" {
  name     = "${local.send_auth_rule_name}"
  queue_id = "${azurerm_servicebus_queue.main.id}"

  send = true
}

resource "azurerm_servicebus_queue_authorization_rule" "listen_auth_rule" {
  name     = "${local.listen_auth_rule_name}"
  queue_id = "${azurerm_servicebus_queue.main.id}"

  listen = true
}

resource "azurerm_servicebus_queue_authorization_rule" "manage_auth_rule" {
  name     = "${local.manage_auth_rule_name}"
  queue_id = "${azurerm_servicebus_queue.main.id}"

  manage = true
}