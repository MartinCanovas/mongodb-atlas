resource "mongodbatlas_alert_configuration" "alert1" {
  project_id = var.project_id
  event_type = "OUTSIDE_METRIC_THRESHOLD"
  enabled    = true

  notification {
    type_name     = "EMAIL"
    interval_min  = 5
    delay_min     = 0
    sms_enabled   = false
    email_enabled = true
    email_address = var.email_address
  }

  matcher {
    field_name = "HOSTNAME_AND_PORT"
    operator   = "EQUALS"
    value      = "SECONDARY"
  }

  metric_threshold = {
    metric_name = "ASSERT_REGULAR"
    operator    = "GREATER_THAN"
    threshold   = 70.0
    units       = "RAW"
    mode        = "AVERAGE"
  }
}
