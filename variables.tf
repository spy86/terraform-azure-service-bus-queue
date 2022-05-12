###########################
# Common vars
###########################
variable "environment" {
  description = "Var used for backend container name key"
  type = string
  default = "dev"
}
variable "default_tags" {
  description = "A mapping of tags to assign to the resource."
  type = map
}
variable "region" {
  description = "Region in which resources are deployed"
  type = string
  default = "weu"
}
###########################
# Resource groups vars
###########################
variable "resource_group_location" {
  description = "The location/region where the storage account is created. Changing this forces a new resource to be created."
  default = "West Europe"
  type = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account."
  type = string
}
###########################
# Service Bus Quee groups vars
###########################
variable "servicebus_queuename" {
  description = "Specifies the name of the ServiceBus Queue resource. Changing this forces a new resource to be created."
  type = string
}
variable "servicebus_namespace_name" {
  description = "Specifies the name of the ServiceBus Namespace resource . Changing this forces a new resource to be created."
  type = string
}
variable "servicebus_queue_lock_duration" {
  description = "The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. Maximum value is 5 minutes. Defaults to 1 minute (PT1M)."
  type = string
  default = "PT1M"
}
variable "servicebus_queue_max_delivery_count" {
  description = "Integer value which controls when a message is automatically dead lettered. Defaults to 10."
  type = number
  default = 10
}
variable "servicebus_queue_requires_duplicate_detection" {
  description = "Boolean flag which controls whether the Queue requires duplicate detection. Changing this forces a new resource to be created. Defaults to false."
  type = string
  default = "false"
}
variable "servicebus_queue_duplicate_detection_history_time_window" {
  description = "The ISO 8601 timespan duration during which duplicates can be detected. Defaults to 10 minutes (PT10M)."
  type = string
  default = "PT10M"
  
}
variable "servicebus_queue_max_size_in_megabytes" {
  description = "Integer value which controls the size of memory allocated for the queue. For supported values see the Queue or topic size section of Service Bus Quotas. Defaults to 1024."
  type = number
  default = 1024
}
variable "servicebus_queue_requires_session" {
  description = "Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages. Changing this forces a new resource to be created. Defaults to false."
  type = string
  default = "false"
}
variable "servicebus_queue_default_message_ttl" {
  description = "The ISO 8601 timespan duration of the TTL of messages sent to this queue. This is the default value used when TTL is not set on message itself."
  type = string
  default = "P10675199DT2H48M5.4775807S"
}
variable "servicebus_queue_dead_lettering_on_message_expiration" {
  description = "Boolean flag which controls whether the Queue has dead letter support when a message expires. Defaults to false."
  type = string
  default = "true"
}
variable "servicebus_queue_auto_delete_on_idle" {
  description = "The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes."
  type = string
  default = "P10675199DT2H48M5.4775807S"
}
variable "servicebus_queue_enable_partitioning" {
  description = "Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. Changing this forces a new resource to be created. Defaults to false for Basic and Standard. For Premium, it MUST be set to true."
  type = string
  default = "false"
}
variable "servicebus_queue_enable_express" {
  description = "Boolean flag which controls whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage. Defaults to false for Basic and Standard. For Premium, it MUST be set to false."
  type = string
  default = "false"
}