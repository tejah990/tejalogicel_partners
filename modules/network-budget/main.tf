resource "aws_budgets_budget" "Networkbudget" {
  name              = var.network_budget_name
  budget_type       = var.network_budget_type
  limit_amount      = var.network_limit_amount
  limit_unit        = var.network_limit_unit
  time_unit         = var.network_time_unit
  
   cost_filter {
    name   = "USAGE_TYPE"
    values = ["DataTransfer-Out-Bytes"]
  }
  notification {
    comparison_operator = "GREATER_THAN"
    notification_type   = "ACTUAL"
    threshold           = var.network_threshold
    threshold_type      = "PERCENTAGE"
    subscriber_email_addresses  = ["tejahhorizon@gmail.com"]

    }
  }