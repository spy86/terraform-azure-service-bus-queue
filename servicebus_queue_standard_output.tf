output "standard_name" {
  description = "Specifies the name of the ServiceBus Queue resource"
  value = "${azurerm_servicebus_queue.main.name}"
  sensitive = true
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.standard_send_auth_rule" ]
}
output "standard_primary_send_connection_string" {
  description = "The Primary Connection String for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.standard_send_auth_rule[count.index].primary_connection_string}"
  sensitive = true
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.standard_send_auth_rule" ]
}
output "standard_secondary_send_connection_string" {
  description = "The Secondary Connection String for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.standard_send_auth_rule[count.index].secondary_connection_string}"
  sensitive = false
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.standard_send_auth_rule" ]
}
output "standard_primary_send_shared_access_key" {
  description = "The Primary Key for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.standard_send_auth_rule[count.index].primary_key}"
  sensitive = true
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.standard_send_auth_rule" ]
}
output "standard_secondary_send_shared_access_key" {
  description = "The Secondary Key for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.standard_send_auth_rule[count.index].secondary_key}"
  sensitive = true
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.standard_send_auth_rule" ]
}
output "standard_primary_listen_connection_string" {
  description = "The Primary Connection String for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.standard_listen_auth_rule[count.index].primary_connection_string}"
  sensitive = false
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.standard_listen_auth_rule" ]
}
output "standard_secondary_listen_connection_string" {
  description = "The Secondary Connection String for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.standard_listen_auth_rule[count.index].secondary_connection_string}"
  sensitive = false
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.standard_listen_auth_rule" ]
}
output "standard_primary_listen_shared_access_key" {
  description = "The Primary Key for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.standard_listen_auth_rule[count.index].primary_key}"
  sensitive = true
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.standard_listen_auth_rule" ]
}
output "standard_secondary_listen_shared_access_key" {
  description = "The Secondary Key for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.standard_listen_auth_rule[count.index].secondary_key}"
  sensitive = true
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.standard_listen_auth_rule" ]
}
output "standard_primary_manage_connection_string" {
  description = "The Primary Connection String for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.standard_manage_auth_rule[count.index].primary_connection_string}"
  sensitive = false
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.standard_manage_auth_rule" ]
}
output "standard_secondary_manage_connection_string" {
  description = "The Secondary Connection String for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.standard_manage_auth_rule[count.index].secondary_connection_string}"
  sensitive = false
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.standard_manage_auth_rule" ]
}
output "standard_primary_manage_shared_access_key" {
  description = "The Primary Key for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.standard_manage_auth_rule[count.index].primary_key}"
  sensitive = true
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.standard_manage_auth_rule" ]
}
output "standard_secondary_manage_shared_access_key" {
  description = "The Secondary Key for the Authorization Rule."
  value = "${azurerm_servicebus_queue_authorization_rule.standard_manage_auth_rule[count.index].secondary_key}"
  sensitive = true
  depends_on = [ "azurerm_servicebus_queue_authorization_rule.standard_manage_auth_rule" ]
}