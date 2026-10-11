output "health_checks_vantage_points_lookup_id" {
  description = "Map of id values across all health_checks_vantage_points_lookup, keyed the same as var.health_checks_vantage_points_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_health_checks_vantage_points.health_checks_vantage_points_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "health_checks_vantage_points_lookup_display_name" {
  description = "Map of display_name values across all health_checks_vantage_points_lookup, keyed the same as var.health_checks_vantage_points_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_health_checks_vantage_points.health_checks_vantage_points_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "health_checks_vantage_points_lookup_filter" {
  description = "Map of filter values across all health_checks_vantage_points_lookup, keyed the same as var.health_checks_vantage_points_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_health_checks_vantage_points.health_checks_vantage_points_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "health_checks_vantage_points_lookup_health_checks_vantage_points" {
  description = "Map of health_checks_vantage_points values across all health_checks_vantage_points_lookup, keyed the same as var.health_checks_vantage_points_lookup except keys with no health_checks_vantage_points are omitted"
  value       = { for k, v in data.oci_health_checks_vantage_points.health_checks_vantage_points_lookup : k => v.health_checks_vantage_points if v.health_checks_vantage_points != null && length(v.health_checks_vantage_points) > 0 }
}
output "health_checks_vantage_points_lookup_name" {
  description = "Map of name values across all health_checks_vantage_points_lookup, keyed the same as var.health_checks_vantage_points_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_health_checks_vantage_points.health_checks_vantage_points_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}

