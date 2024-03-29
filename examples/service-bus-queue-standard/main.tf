provider "azurerm" {
features {}
}

module "service-bus-queue" {
  source  = "spy86/service-bus-queue/azure"
  version = "1.0.5"
  resource_group_name = "weu-test-rg"
  servicebus_namespace_name = "dev-c803dd50-weu-sb-ns"
  servicebus_queue_name = "queue01"
  environment = "dev"
  region = "weu"
  resource_group_location = "West Europe"
  servicebus_queue_auto_delete_on_idle= "P10675199DT2H48M5.4775807S"
  servicebus_queue_dead_lettering_on_message_expiration = "true"
  servicebus_queue_default_message_ttl = "P10675199DT2H48M5.4775807S"
  servicebus_queue_duplicate_detection_history_time_window = "PT10M"
  servicebus_queue_enable_express= "false"
  servicebus_queue_enable_partitioning = "false"
  servicebus_queue_lock_duration= "PT1M"
  servicebus_queue_max_delivery_count = "10"
  servicebus_queue_max_size_in_megabytes= "1024"
  servicebus_queue_requires_duplicate_detection = "false"
  servicebus_queue_requires_session = "false"
  servicebus_namespace_sku ="Standard"

  default_tags = {
      Administrator = "Someone"
      Department = "IT"
      CostCentre = "ABC123"
      ContactPerson = "Someone@example.com"
      ManagedByTerraform = "True"
}
}