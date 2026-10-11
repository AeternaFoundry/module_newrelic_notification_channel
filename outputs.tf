output "notification_channels_id" {
  description = "Map of id values across all notification_channels, keyed the same as var.notification_channels except keys with no id are omitted"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.id if v.id != null && length(v.id) > 0 }
}
output "notification_channels_account_id" {
  description = "Map of account_id values across all notification_channels, keyed the same as var.notification_channels except keys with no account_id are omitted"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.account_id if v.account_id != null }
}
output "notification_channels_active" {
  description = "Map of active values across all notification_channels, keyed the same as var.notification_channels except keys with no active are omitted"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.active if v.active != null }
}
output "notification_channels_destination_id" {
  description = "Map of destination_id values across all notification_channels, keyed the same as var.notification_channels except keys with no destination_id are omitted"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.destination_id if v.destination_id != null && length(v.destination_id) > 0 }
}
output "notification_channels_name" {
  description = "Map of name values across all notification_channels, keyed the same as var.notification_channels except keys with no name are omitted"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.name if v.name != null && length(v.name) > 0 }
}
output "notification_channels_product" {
  description = "Map of product values across all notification_channels, keyed the same as var.notification_channels except keys with no product are omitted"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.product if v.product != null && length(v.product) > 0 }
}
output "notification_channels_property" {
  description = "Map of property values across all notification_channels, keyed the same as var.notification_channels except keys with no property are omitted"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.property if v.property != null && length(v.property) > 0 }
}
output "notification_channels_status" {
  description = "Map of status values across all notification_channels, keyed the same as var.notification_channels except keys with no status are omitted"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.status if v.status != null && length(v.status) > 0 }
}
output "notification_channels_type" {
  description = "Map of type values across all notification_channels, keyed the same as var.notification_channels except keys with no type are omitted"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.type if v.type != null && length(v.type) > 0 }
}

