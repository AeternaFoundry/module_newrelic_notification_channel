resource "newrelic_notification_channel" "notification_channels" {
  for_each = var.notification_channels

  destination_id = each.value.destination_id
  name           = each.value.name
  product        = each.value.product
  type           = each.value.type
  account_id     = each.value.account_id
  active         = each.value.active

  dynamic "property" {
    for_each = each.value.property
    content {
      display_value = property.value.display_value
      key           = property.value.key
      label         = property.value.label
      value         = property.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      update = timeouts.value.update
    }
  }
}

