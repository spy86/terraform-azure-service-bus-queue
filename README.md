<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_servicebus_queue.basic](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue) | resource |
| [azurerm_servicebus_queue.premium](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue) | resource |
| [azurerm_servicebus_queue.standard](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue) | resource |
| [azurerm_servicebus_queue_authorization_rule.basic_listen_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue_authorization_rule) | resource |
| [azurerm_servicebus_queue_authorization_rule.basic_manage_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue_authorization_rule) | resource |
| [azurerm_servicebus_queue_authorization_rule.basic_send_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue_authorization_rule) | resource |
| [azurerm_servicebus_queue_authorization_rule.premium_listen_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue_authorization_rule) | resource |
| [azurerm_servicebus_queue_authorization_rule.premium_manage_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue_authorization_rule) | resource |
| [azurerm_servicebus_queue_authorization_rule.premium_send_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue_authorization_rule) | resource |
| [azurerm_servicebus_queue_authorization_rule.standard_listen_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue_authorization_rule) | resource |
| [azurerm_servicebus_queue_authorization_rule.standard_manage_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue_authorization_rule) | resource |
| [azurerm_servicebus_queue_authorization_rule.standard_send_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue_authorization_rule) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/resource_group) | data source |
| [azurerm_servicebus_namespace.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/data-sources/servicebus_namespace) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | A mapping of tags to assign to the resource. | `map` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Var used for backend container name key | `string` | `"dev"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region in which resources are deployed | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The location/region where the storage account is created. Changing this forces a new resource to be created. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the storage account. | `string` | n/a | yes |
| <a name="input_servicebus_namespace_name"></a> [servicebus\_namespace\_name](#input\_servicebus\_namespace\_name) | Specifies the name of the ServiceBus Namespace resource . Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_servicebus_namespace_sku"></a> [servicebus\_namespace\_sku](#input\_servicebus\_namespace\_sku) | Defines which tier to use. Options are Basic, Standard or Premium. Please note that setting this field to Premium will force the creation of a new resource. | `string` | n/a | yes |
| <a name="input_servicebus_queue_auto_delete_on_idle"></a> [servicebus\_queue\_auto\_delete\_on\_idle](#input\_servicebus\_queue\_auto\_delete\_on\_idle) | The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes. | `string` | `"P10675199DT2H48M5.4775807S"` | no |
| <a name="input_servicebus_queue_dead_lettering_on_message_expiration"></a> [servicebus\_queue\_dead\_lettering\_on\_message\_expiration](#input\_servicebus\_queue\_dead\_lettering\_on\_message\_expiration) | Boolean flag which controls whether the Queue has dead letter support when a message expires. Defaults to false. | `bool` | `true` | no |
| <a name="input_servicebus_queue_default_message_ttl"></a> [servicebus\_queue\_default\_message\_ttl](#input\_servicebus\_queue\_default\_message\_ttl) | The ISO 8601 timespan duration of the TTL of messages sent to this queue. This is the default value used when TTL is not set on message itself. | `string` | `"P10675199DT2H48M5.4775807S"` | no |
| <a name="input_servicebus_queue_duplicate_detection_history_time_window"></a> [servicebus\_queue\_duplicate\_detection\_history\_time\_window](#input\_servicebus\_queue\_duplicate\_detection\_history\_time\_window) | The ISO 8601 timespan duration during which duplicates can be detected. Defaults to 10 minutes (PT10M). | `string` | `"PT10M"` | no |
| <a name="input_servicebus_queue_enable_express"></a> [servicebus\_queue\_enable\_express](#input\_servicebus\_queue\_enable\_express) | Boolean flag which controls whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage. Defaults to false for Basic and Standard. For Premium, it MUST be set to false. | `bool` | `false` | no |
| <a name="input_servicebus_queue_enable_partitioning"></a> [servicebus\_queue\_enable\_partitioning](#input\_servicebus\_queue\_enable\_partitioning) | Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. Changing this forces a new resource to be created. Defaults to false for Basic and Standard. For Premium, it MUST be set to true. | `bool` | `false` | no |
| <a name="input_servicebus_queue_lock_duration"></a> [servicebus\_queue\_lock\_duration](#input\_servicebus\_queue\_lock\_duration) | The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. Maximum value is 5 minutes. Defaults to 1 minute (PT1M). | `string` | `"PT1M"` | no |
| <a name="input_servicebus_queue_max_delivery_count"></a> [servicebus\_queue\_max\_delivery\_count](#input\_servicebus\_queue\_max\_delivery\_count) | Integer value which controls when a message is automatically dead lettered. Defaults to 10. | `number` | `10` | no |
| <a name="input_servicebus_queue_max_size_in_megabytes"></a> [servicebus\_queue\_max\_size\_in\_megabytes](#input\_servicebus\_queue\_max\_size\_in\_megabytes) | Integer value which controls the size of memory allocated for the queue. For supported values see the Queue or topic size section of Service Bus Quotas. Defaults to 1024. | `number` | `1024` | no |
| <a name="input_servicebus_queue_name"></a> [servicebus\_queue\_name](#input\_servicebus\_queue\_name) | Specifies the name of the ServiceBus Queue resource. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_servicebus_queue_requires_duplicate_detection"></a> [servicebus\_queue\_requires\_duplicate\_detection](#input\_servicebus\_queue\_requires\_duplicate\_detection) | Boolean flag which controls whether the Queue requires duplicate detection. Changing this forces a new resource to be created. Defaults to false. | `bool` | `false` | no |
| <a name="input_servicebus_queue_requires_session"></a> [servicebus\_queue\_requires\_session](#input\_servicebus\_queue\_requires\_session) | Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages. Changing this forces a new resource to be created. Defaults to false. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_basic_basic_primary_listen_connection_string"></a> [basic\_basic\_primary\_listen\_connection\_string](#output\_basic\_basic\_primary\_listen\_connection\_string) | The Primary Connection String for the Authorization Rule. |
| <a name="output_basic_basic_secondary_send_shared_access_key"></a> [basic\_basic\_secondary\_send\_shared\_access\_key](#output\_basic\_basic\_secondary\_send\_shared\_access\_key) | The Secondary Key for the Authorization Rule. |
| <a name="output_basic_name"></a> [basic\_name](#output\_basic\_name) | Specifies the name of the ServiceBus Queue resource |
| <a name="output_basic_primary_listen_shared_access_key"></a> [basic\_primary\_listen\_shared\_access\_key](#output\_basic\_primary\_listen\_shared\_access\_key) | The Primary Key for the Authorization Rule. |
| <a name="output_basic_primary_manage_connection_string"></a> [basic\_primary\_manage\_connection\_string](#output\_basic\_primary\_manage\_connection\_string) | The Primary Connection String for the Authorization Rule. |
| <a name="output_basic_primary_manage_shared_access_key"></a> [basic\_primary\_manage\_shared\_access\_key](#output\_basic\_primary\_manage\_shared\_access\_key) | The Primary Key for the Authorization Rule. |
| <a name="output_basic_primary_send_connection_string"></a> [basic\_primary\_send\_connection\_string](#output\_basic\_primary\_send\_connection\_string) | The Primary Connection String for the Authorization Rule. |
| <a name="output_basic_primary_send_shared_access_key"></a> [basic\_primary\_send\_shared\_access\_key](#output\_basic\_primary\_send\_shared\_access\_key) | The Primary Key for the Authorization Rule. |
| <a name="output_basic_secondary_listen_connection_string"></a> [basic\_secondary\_listen\_connection\_string](#output\_basic\_secondary\_listen\_connection\_string) | The Secondary Connection String for the Authorization Rule. |
| <a name="output_basic_secondary_listen_shared_access_key"></a> [basic\_secondary\_listen\_shared\_access\_key](#output\_basic\_secondary\_listen\_shared\_access\_key) | The Secondary Key for the Authorization Rule. |
| <a name="output_basic_secondary_manage_connection_string"></a> [basic\_secondary\_manage\_connection\_string](#output\_basic\_secondary\_manage\_connection\_string) | The Secondary Connection String for the Authorization Rule. |
| <a name="output_basic_secondary_manage_shared_access_key"></a> [basic\_secondary\_manage\_shared\_access\_key](#output\_basic\_secondary\_manage\_shared\_access\_key) | The Secondary Key for the Authorization Rule. |
| <a name="output_basic_secondary_send_connection_string"></a> [basic\_secondary\_send\_connection\_string](#output\_basic\_secondary\_send\_connection\_string) | The Secondary Connection String for the Authorization Rule. |
| <a name="output_premium_name"></a> [premium\_name](#output\_premium\_name) | Specifies the name of the ServiceBus Queue resource |
| <a name="output_premium_primary_listen_connection_string"></a> [premium\_primary\_listen\_connection\_string](#output\_premium\_primary\_listen\_connection\_string) | The Primary Connection String for the Authorization Rule. |
| <a name="output_premium_primary_listen_shared_access_key"></a> [premium\_primary\_listen\_shared\_access\_key](#output\_premium\_primary\_listen\_shared\_access\_key) | The Primary Key for the Authorization Rule. |
| <a name="output_premium_primary_manage_connection_string"></a> [premium\_primary\_manage\_connection\_string](#output\_premium\_primary\_manage\_connection\_string) | The Primary Connection String for the Authorization Rule. |
| <a name="output_premium_primary_manage_shared_access_key"></a> [premium\_primary\_manage\_shared\_access\_key](#output\_premium\_primary\_manage\_shared\_access\_key) | The Primary Key for the Authorization Rule. |
| <a name="output_premium_primary_send_connection_string"></a> [premium\_primary\_send\_connection\_string](#output\_premium\_primary\_send\_connection\_string) | The Primary Connection String for the Authorization Rule. |
| <a name="output_premium_primary_send_shared_access_key"></a> [premium\_primary\_send\_shared\_access\_key](#output\_premium\_primary\_send\_shared\_access\_key) | The Primary Key for the Authorization Rule. |
| <a name="output_premium_secondary_listen_connection_string"></a> [premium\_secondary\_listen\_connection\_string](#output\_premium\_secondary\_listen\_connection\_string) | The Secondary Connection String for the Authorization Rule. |
| <a name="output_premium_secondary_listen_shared_access_key"></a> [premium\_secondary\_listen\_shared\_access\_key](#output\_premium\_secondary\_listen\_shared\_access\_key) | The Secondary Key for the Authorization Rule. |
| <a name="output_premium_secondary_manage_connection_string"></a> [premium\_secondary\_manage\_connection\_string](#output\_premium\_secondary\_manage\_connection\_string) | The Secondary Connection String for the Authorization Rule. |
| <a name="output_premium_secondary_manage_shared_access_key"></a> [premium\_secondary\_manage\_shared\_access\_key](#output\_premium\_secondary\_manage\_shared\_access\_key) | The Secondary Key for the Authorization Rule. |
| <a name="output_premium_secondary_send_connection_string"></a> [premium\_secondary\_send\_connection\_string](#output\_premium\_secondary\_send\_connection\_string) | The Secondary Connection String for the Authorization Rule. |
| <a name="output_premium_secondary_send_shared_access_key"></a> [premium\_secondary\_send\_shared\_access\_key](#output\_premium\_secondary\_send\_shared\_access\_key) | The Secondary Key for the Authorization Rule. |
| <a name="output_standard_name"></a> [standard\_name](#output\_standard\_name) | Specifies the name of the ServiceBus Queue resource |
| <a name="output_standard_primary_listen_connection_string"></a> [standard\_primary\_listen\_connection\_string](#output\_standard\_primary\_listen\_connection\_string) | The Primary Connection String for the Authorization Rule. |
| <a name="output_standard_primary_listen_shared_access_key"></a> [standard\_primary\_listen\_shared\_access\_key](#output\_standard\_primary\_listen\_shared\_access\_key) | The Primary Key for the Authorization Rule. |
| <a name="output_standard_primary_manage_connection_string"></a> [standard\_primary\_manage\_connection\_string](#output\_standard\_primary\_manage\_connection\_string) | The Primary Connection String for the Authorization Rule. |
| <a name="output_standard_primary_manage_shared_access_key"></a> [standard\_primary\_manage\_shared\_access\_key](#output\_standard\_primary\_manage\_shared\_access\_key) | The Primary Key for the Authorization Rule. |
| <a name="output_standard_primary_send_connection_string"></a> [standard\_primary\_send\_connection\_string](#output\_standard\_primary\_send\_connection\_string) | The Primary Connection String for the Authorization Rule. |
| <a name="output_standard_primary_send_shared_access_key"></a> [standard\_primary\_send\_shared\_access\_key](#output\_standard\_primary\_send\_shared\_access\_key) | The Primary Key for the Authorization Rule. |
| <a name="output_standard_secondary_listen_connection_string"></a> [standard\_secondary\_listen\_connection\_string](#output\_standard\_secondary\_listen\_connection\_string) | The Secondary Connection String for the Authorization Rule. |
| <a name="output_standard_secondary_listen_shared_access_key"></a> [standard\_secondary\_listen\_shared\_access\_key](#output\_standard\_secondary\_listen\_shared\_access\_key) | The Secondary Key for the Authorization Rule. |
| <a name="output_standard_secondary_manage_connection_string"></a> [standard\_secondary\_manage\_connection\_string](#output\_standard\_secondary\_manage\_connection\_string) | The Secondary Connection String for the Authorization Rule. |
| <a name="output_standard_secondary_manage_shared_access_key"></a> [standard\_secondary\_manage\_shared\_access\_key](#output\_standard\_secondary\_manage\_shared\_access\_key) | The Secondary Key for the Authorization Rule. |
| <a name="output_standard_secondary_send_connection_string"></a> [standard\_secondary\_send\_connection\_string](#output\_standard\_secondary\_send\_connection\_string) | The Secondary Connection String for the Authorization Rule. |
| <a name="output_standard_secondary_send_shared_access_key"></a> [standard\_secondary\_send\_shared\_access\_key](#output\_standard\_secondary\_send\_shared\_access\_key) | The Secondary Key for the Authorization Rule. |
<!-- END_TF_DOCS -->

## How to use
* For sku **Basic**
```
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
```

* For sku **Standard**
```
module "service-bus-queue" {
  source  = "spy86/service-bus-queue/azure"
  version = "1.0.4"
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

```

* For sku **Premium**
```
module "service-bus-queue" {
  source  = "spy86/service-bus-queue/azure"
  version = "1.0.4"
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
  servicebus_namespace_sku ="Premium"

  default_tags = {
      Administrator = "Someone"
      Department = "IT"
      CostCentre = "ABC123"
      ContactPerson = "Someone@example.com"
      ManagedByTerraform = "True"
}
}

```