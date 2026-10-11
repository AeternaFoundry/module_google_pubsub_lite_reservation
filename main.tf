resource "google_pubsub_lite_reservation" "pubsub_lite_reservations" {
  for_each = var.pubsub_lite_reservations

  name                = each.value.name
  throughput_capacity = each.value.throughput_capacity
  deletion_policy     = each.value.deletion_policy
  project             = each.value.project
  region              = each.value.region

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

