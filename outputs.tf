output "onesubscription_organization_subscriptions_lookup_id" {
  description = "Map of id values across all onesubscription_organization_subscriptions_lookup, keyed the same as var.onesubscription_organization_subscriptions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_onesubscription_organization_subscriptions.onesubscription_organization_subscriptions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "onesubscription_organization_subscriptions_lookup_compartment_id" {
  description = "Map of compartment_id values across all onesubscription_organization_subscriptions_lookup, keyed the same as var.onesubscription_organization_subscriptions_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_onesubscription_organization_subscriptions.onesubscription_organization_subscriptions_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "onesubscription_organization_subscriptions_lookup_filter" {
  description = "Map of filter values across all onesubscription_organization_subscriptions_lookup, keyed the same as var.onesubscription_organization_subscriptions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_onesubscription_organization_subscriptions.onesubscription_organization_subscriptions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "onesubscription_organization_subscriptions_lookup_organization_subscriptions" {
  description = "Map of organization_subscriptions values across all onesubscription_organization_subscriptions_lookup, keyed the same as var.onesubscription_organization_subscriptions_lookup except keys with no organization_subscriptions are omitted"
  value       = { for k, v in data.oci_onesubscription_organization_subscriptions.onesubscription_organization_subscriptions_lookup : k => v.organization_subscriptions if v.organization_subscriptions != null && length(v.organization_subscriptions) > 0 }
}

