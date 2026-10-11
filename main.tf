data "oci_onesubscription_organization_subscriptions" "onesubscription_organization_subscriptions_lookup" {
  for_each = var.onesubscription_organization_subscriptions_lookup

  compartment_id = each.value.compartment_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

