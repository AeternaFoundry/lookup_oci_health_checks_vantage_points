variable "health_checks_vantage_points_lookup" {
  description = <<EOT
Map of health_checks_vantage_points_lookup, attributes below
Optional:
    - display_name
    - name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    display_name = optional(string)
    name         = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

