resource "aws_budgets_budget" "Storagebudget" {
  name              = var.storage_budget.name
  budget_type       = var.storage_budget_type
  limit_amount      = var.storage_limit_amount
  limit_unit        = var.storage_limit_unit
  time_unit         = var.storage_time_unit
  
   cost_filter {
    name   = "Service"
    values = ["Amazon Simple Storage Service"]
  }
  notification {
    comparison_operator = "GREATER_THAN"
    notification_type   = "ACTUAL"
    threshold           = var.storage_threshold
    threshold_type      = "PERCENTAGE"
    subscriber_email_addresses  = ["tejahhorizon@gmail.com"]

    }
  }