data "oci_health_checks_vantage_points" "health_checks_vantage_points_lookup" {
  for_each = var.health_checks_vantage_points_lookup

  display_name = each.value.display_name
  name         = each.value.name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

