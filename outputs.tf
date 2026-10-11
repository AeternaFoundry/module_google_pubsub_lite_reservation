output "pubsub_lite_reservations_id" {
  description = "Map of id values across all pubsub_lite_reservations, keyed the same as var.pubsub_lite_reservations except keys with no id are omitted"
  value       = { for k, v in google_pubsub_lite_reservation.pubsub_lite_reservations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pubsub_lite_reservations_deletion_policy" {
  description = "Map of deletion_policy values across all pubsub_lite_reservations, keyed the same as var.pubsub_lite_reservations except keys with no deletion_policy are omitted"
  value       = { for k, v in google_pubsub_lite_reservation.pubsub_lite_reservations : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "pubsub_lite_reservations_name" {
  description = "Map of name values across all pubsub_lite_reservations, keyed the same as var.pubsub_lite_reservations except keys with no name are omitted"
  value       = { for k, v in google_pubsub_lite_reservation.pubsub_lite_reservations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "pubsub_lite_reservations_project" {
  description = "Map of project values across all pubsub_lite_reservations, keyed the same as var.pubsub_lite_reservations except keys with no project are omitted"
  value       = { for k, v in google_pubsub_lite_reservation.pubsub_lite_reservations : k => v.project if v.project != null && length(v.project) > 0 }
}
output "pubsub_lite_reservations_region" {
  description = "Map of region values across all pubsub_lite_reservations, keyed the same as var.pubsub_lite_reservations except keys with no region are omitted"
  value       = { for k, v in google_pubsub_lite_reservation.pubsub_lite_reservations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "pubsub_lite_reservations_throughput_capacity" {
  description = "Map of throughput_capacity values across all pubsub_lite_reservations, keyed the same as var.pubsub_lite_reservations except keys with no throughput_capacity are omitted"
  value       = { for k, v in google_pubsub_lite_reservation.pubsub_lite_reservations : k => v.throughput_capacity if v.throughput_capacity != null }
}

