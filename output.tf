output "name" {
  description = "Specifies the name of the ServiceBus Queue resource"
  value = "${azurerm_servicebus_queue.main.name}"
  sensitive = true
}
output "primary_send_connection_string" {
  description = "The Primary Connection String for the Authorization Rule."
  value = azurerm_servicebus_queue_authorization_rule.send_auth_rule.primary_connection_string
  sensitive = true
}
output "secondary_send_connection_string" {
  description = "The Secondary Connection String for the Authorization Rule."
  value = azurerm_servicebus_queue_authorization_rule.send_auth_rule.secondary_connection_string
  sensitive = false
}
output "primary_send_shared_access_key" {
  description = "The Primary Key for the Authorization Rule."
  value = azurerm_servicebus_queue_authorization_rule.send_auth_rule.primary_key
  sensitive = true
}
output "secondary_send_shared_access_key" {
  description = "The Secondary Key for the Authorization Rule."
  value = azurerm_servicebus_queue_authorization_rule.send_auth_rule.secondary_key
  sensitive = true
}
output "primary_listen_connection_string" {
  description = "The Primary Connection String for the Authorization Rule."
  value = azurerm_servicebus_queue_authorization_rule.listen_auth_rule.primary_connection_string
  sensitive = false
}
output "secondary_listen_connection_string" {
  description = "The Secondary Connection String for the Authorization Rule."
  value = azurerm_servicebus_queue_authorization_rule.listen_auth_rule.secondary_connection_string
  sensitive = false
}
output "primary_listen_shared_access_key" {
  description = "The Primary Key for the Authorization Rule."
  value = azurerm_servicebus_queue_authorization_rule.listen_auth_rule.primary_key
  sensitive = true
}
output "secondary_listen_shared_access_key" {
  description = "The Secondary Key for the Authorization Rule."
  value = azurerm_servicebus_queue_authorization_rule.listen_auth_rule.secondary_key
  sensitive = true
}
output "primary_manage_connection_string" {
  description = "The Primary Connection String for the Authorization Rule."
  value = azurerm_servicebus_queue_authorization_rule.manage_auth_rule.primary_connection_string
  sensitive = false
}
output "secondary_manage_connection_string" {
  description = "The Secondary Connection String for the Authorization Rule."
  value = azurerm_servicebus_queue_authorization_rule.manage_auth_rule.secondary_connection_string
  sensitive = false
}
output "primary_manage_shared_access_key" {
  description = "The Primary Key for the Authorization Rule."
  value = azurerm_servicebus_queue_authorization_rule.manage_auth_rule.primary_key
  sensitive = true
}
output "secondary_manage_shared_access_key" {
  description = "The Secondary Key for the Authorization Rule."
  value = azurerm_servicebus_queue_authorization_rule.manage_auth_rule.secondary_key
  sensitive = true
}