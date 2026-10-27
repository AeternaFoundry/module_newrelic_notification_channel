output "notification_channels_id" {
  description = "Map of id values across all notification_channels, keyed the same as var.notification_channels"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.id }
}
output "notification_channels_account_id" {
  description = "Map of account_id values across all notification_channels, keyed the same as var.notification_channels"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.account_id }
}
output "notification_channels_active" {
  description = "Map of active values across all notification_channels, keyed the same as var.notification_channels"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.active }
}
output "notification_channels_destination_id" {
  description = "Map of destination_id values across all notification_channels, keyed the same as var.notification_channels"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.destination_id }
}
output "notification_channels_name" {
  description = "Map of name values across all notification_channels, keyed the same as var.notification_channels"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.name }
}
output "notification_channels_product" {
  description = "Map of product values across all notification_channels, keyed the same as var.notification_channels"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.product }
}
output "notification_channels_property" {
  description = "Map of property values across all notification_channels, keyed the same as var.notification_channels"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.property }
}
output "notification_channels_status" {
  description = "Map of status values across all notification_channels, keyed the same as var.notification_channels"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.status }
}
output "notification_channels_type" {
  description = "Map of type values across all notification_channels, keyed the same as var.notification_channels"
  value       = { for k, v in newrelic_notification_channel.notification_channels : k => v.type }
}

