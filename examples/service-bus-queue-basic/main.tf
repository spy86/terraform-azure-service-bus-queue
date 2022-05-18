module "service-bus-queue" {
  source  = "spy86/service-bus-queue/azure"
  version = "1.0.4"
  resource_group_name = "weu-test-rg"
  servicebus_namespace_name = "dev-c803dd50-weu-sb-ns"
  servicebus_queue_name = "queue01"
  environment = "dev"
  region = "weu"
  resource_group_location = "West Europe"
  servicebus_namespace_sku ="Basic"

  default_tags = {
      Administrator = "Someone"
      Department = "IT"
      CostCentre = "ABC123"
      ContactPerson = "Someone@example.com"
      ManagedByTerraform = "True"
}
}