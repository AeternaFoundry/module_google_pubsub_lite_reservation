variable "pubsub_lite_reservations" {
  description = <<EOT
Map of pubsub_lite_reservations, attributes below
Required:
    - name
    - throughput_capacity
Optional:
    - deletion_policy
    - project
    - region
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                = string
    throughput_capacity = number
    deletion_policy     = optional(string)
    project             = optional(string)
    region              = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

