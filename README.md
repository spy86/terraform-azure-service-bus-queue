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
| [azurerm_servicebus_queue.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue) | resource |
| [azurerm_servicebus_queue_authorization_rule.listen_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue_authorization_rule) | resource |
| [azurerm_servicebus_queue_authorization_rule.manage_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue_authorization_rule) | resource |
| [azurerm_servicebus_queue_authorization_rule.send_auth_rule](https://registry.terraform.io/providers/hashicorp/azurerm/3.3.0/docs/resources/servicebus_queue_authorization_rule) | resource |
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
| <a name="input_servicebus_queue_auto_delete_on_idle"></a> [servicebus\_queue\_auto\_delete\_on\_idle](#input\_servicebus\_queue\_auto\_delete\_on\_idle) | The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes. | `string` | `"P10675199DT2H48M5.4775807S"` | no |
| <a name="input_servicebus_queue_dead_lettering_on_message_expiration"></a> [servicebus\_queue\_dead\_lettering\_on\_message\_expiration](#input\_servicebus\_queue\_dead\_lettering\_on\_message\_expiration) | Boolean flag which controls whether the Queue has dead letter support when a message expires. Defaults to false. | `string` | `"true"` | no |
| <a name="input_servicebus_queue_default_message_ttl"></a> [servicebus\_queue\_default\_message\_ttl](#input\_servicebus\_queue\_default\_message\_ttl) | The ISO 8601 timespan duration of the TTL of messages sent to this queue. This is the default value used when TTL is not set on message itself. | `string` | `"P10675199DT2H48M5.4775807S"` | no |
| <a name="input_servicebus_queue_duplicate_detection_history_time_window"></a> [servicebus\_queue\_duplicate\_detection\_history\_time\_window](#input\_servicebus\_queue\_duplicate\_detection\_history\_time\_window) | The ISO 8601 timespan duration during which duplicates can be detected. Defaults to 10 minutes (PT10M). | `string` | `"PT10M"` | no |
| <a name="input_servicebus_queue_enable_express"></a> [servicebus\_queue\_enable\_express](#input\_servicebus\_queue\_enable\_express) | Boolean flag which controls whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage. Defaults to false for Basic and Standard. For Premium, it MUST be set to false. | `string` | `"false"` | no |
| <a name="input_servicebus_queue_enable_partitioning"></a> [servicebus\_queue\_enable\_partitioning](#input\_servicebus\_queue\_enable\_partitioning) | Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. Changing this forces a new resource to be created. Defaults to false for Basic and Standard. For Premium, it MUST be set to true. | `string` | `"false"` | no |
| <a name="input_servicebus_queue_lock_duration"></a> [servicebus\_queue\_lock\_duration](#input\_servicebus\_queue\_lock\_duration) | The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. Maximum value is 5 minutes. Defaults to 1 minute (PT1M). | `string` | `"PT1M"` | no |
| <a name="input_servicebus_queue_max_delivery_count"></a> [servicebus\_queue\_max\_delivery\_count](#input\_servicebus\_queue\_max\_delivery\_count) | Integer value which controls when a message is automatically dead lettered. Defaults to 10. | `number` | `10` | no |
| <a name="input_servicebus_queue_max_size_in_megabytes"></a> [servicebus\_queue\_max\_size\_in\_megabytes](#input\_servicebus\_queue\_max\_size\_in\_megabytes) | Integer value which controls the size of memory allocated for the queue. For supported values see the Queue or topic size section of Service Bus Quotas. Defaults to 1024. | `number` | `1024` | no |
| <a name="input_servicebus_queue_requires_duplicate_detection"></a> [servicebus\_queue\_requires\_duplicate\_detection](#input\_servicebus\_queue\_requires\_duplicate\_detection) | Boolean flag which controls whether the Queue requires duplicate detection. Changing this forces a new resource to be created. Defaults to false. | `string` | `"false"` | no |
| <a name="input_servicebus_queue_requires_session"></a> [servicebus\_queue\_requires\_session](#input\_servicebus\_queue\_requires\_session) | Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages. Changing this forces a new resource to be created. Defaults to false. | `string` | `"false"` | no |
| <a name="input_servicebus_queuename"></a> [servicebus\_queuename](#input\_servicebus\_queuename) | Specifies the name of the ServiceBus Queue resource. Changing this forces a new resource to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | Specifies the name of the ServiceBus Queue resource |
| <a name="output_primary_listen_connection_string"></a> [primary\_listen\_connection\_string](#output\_primary\_listen\_connection\_string) | The Primary Connection String for the Authorization Rule. |
| <a name="output_primary_listen_shared_access_key"></a> [primary\_listen\_shared\_access\_key](#output\_primary\_listen\_shared\_access\_key) | The Primary Key for the Authorization Rule. |
| <a name="output_primary_manage_connection_string"></a> [primary\_manage\_connection\_string](#output\_primary\_manage\_connection\_string) | The Primary Connection String for the Authorization Rule. |
| <a name="output_primary_manage_shared_access_key"></a> [primary\_manage\_shared\_access\_key](#output\_primary\_manage\_shared\_access\_key) | The Primary Key for the Authorization Rule. |
| <a name="output_primary_send_connection_string"></a> [primary\_send\_connection\_string](#output\_primary\_send\_connection\_string) | The Primary Connection String for the Authorization Rule. |
| <a name="output_primary_send_shared_access_key"></a> [primary\_send\_shared\_access\_key](#output\_primary\_send\_shared\_access\_key) | The Primary Key for the Authorization Rule. |
| <a name="output_secondary_listen_connection_string"></a> [secondary\_listen\_connection\_string](#output\_secondary\_listen\_connection\_string) | The Secondary Connection String for the Authorization Rule. |
| <a name="output_secondary_listen_shared_access_key"></a> [secondary\_listen\_shared\_access\_key](#output\_secondary\_listen\_shared\_access\_key) | The Secondary Key for the Authorization Rule. |
| <a name="output_secondary_manage_connection_string"></a> [secondary\_manage\_connection\_string](#output\_secondary\_manage\_connection\_string) | The Secondary Connection String for the Authorization Rule. |
| <a name="output_secondary_manage_shared_access_key"></a> [secondary\_manage\_shared\_access\_key](#output\_secondary\_manage\_shared\_access\_key) | The Secondary Key for the Authorization Rule. |
| <a name="output_secondary_send_connection_string"></a> [secondary\_send\_connection\_string](#output\_secondary\_send\_connection\_string) | The Secondary Connection String for the Authorization Rule. |
| <a name="output_secondary_send_shared_access_key"></a> [secondary\_send\_shared\_access\_key](#output\_secondary\_send\_shared\_access\_key) | The Secondary Key for the Authorization Rule. |
<!-- END_TF_DOCS -->