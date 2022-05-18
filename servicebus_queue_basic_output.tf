output "basic_name" {
  description = "Specifies the name of the ServiceBus Queue resource"
  value = "${azurerm_servicebus_queue.basic[*].name}"
  sensitive = false
  depends_on = [ "azurerm_servicebus_queue.basic" ]
}
output "basic_primary_send_connection_string" {
  description = "The Primary Connection String for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.basic_send_auth_rule[*].primary_connection_string}"
  sensitive = false
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.basic_send_auth_rule" ]
}
output "basic_secondary_send_connection_string" {
  description = "The Secondary Connection String for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.basic_send_auth_rule[*].secondary_connection_string}"
  sensitive = false
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.basic_send_auth_rule" ]
}
output "basic_primary_send_shared_access_key" {
  description = "The Primary Key for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.basic_send_auth_rule[*].primary_key}"
  sensitive = true
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.basic_send_auth_rule" ]
}
output "basic_basic_secondary_send_shared_access_key" {
  description = "The Secondary Key for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.basic_send_auth_rule[*].secondary_key}"
  sensitive = true
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.basic_send_auth_rule" ]
}
output "basic_basic_primary_listen_connection_string" {
  description = "The Primary Connection String for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.basic_listen_auth_rule[*].primary_connection_string}"
  sensitive = false
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.basic_listen_auth_rule" ]
}
output "basic_secondary_listen_connection_string" {
  description = "The Secondary Connection String for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.basic_listen_auth_rule[*].secondary_connection_string}"
  sensitive = false
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.basic_listen_auth_rule" ]
}
output "basic_primary_listen_shared_access_key" {
  description = "The Primary Key for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.basic_listen_auth_rule[*].primary_key}"
  sensitive = true
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.basic_listen_auth_rule" ]
}
output "basic_secondary_listen_shared_access_key" {
  description = "The Secondary Key for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.basic_listen_auth_rule[*].secondary_key}"
  sensitive = true
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.basic_listen_auth_rule" ]
}
output "basic_primary_manage_connection_string" {
  description = "The Primary Connection String for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.basic_manage_auth_rule[*].primary_connection_string}"
  sensitive = false
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.basic_manage_auth_rule" ]
}
output "basic_secondary_manage_connection_string" {
  description = "The Secondary Connection String for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.basic_manage_auth_rule[*].secondary_connection_string}"
  sensitive = false
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.basic_manage_auth_rule" ]
}
output "basic_primary_manage_shared_access_key" {
  description = "The Primary Key for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.basic_manage_auth_rule[*].primary_key}"
  sensitive = true
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.basic_manage_auth_rule" ]
}
output "basic_secondary_manage_shared_access_key" {
  description = "The Secondary Key for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.basic_manage_auth_rule[*].secondary_key}"
  sensitive = true
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.basic_manage_auth_rule" ]
}