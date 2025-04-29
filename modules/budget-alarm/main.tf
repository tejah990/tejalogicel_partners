resource "aws_budgets_budget" "Projectbudget" {
  name              = var.Project_budget.name
  budget_type       = var.Project_budget_type
  limit_amount      = var.Project_limit_amount
  limit_unit        = var.Project_limit_unit
  time_unit         = var.Project_time_unit
  notification {
    comparison_operator = "GREATER_THAN"
    notification_type   = "ACTUAL"
    threshold           = var.Project_threshold
    threshold_type      = "PERCENTAGE"
    subscriber_email_addresses  = ["tejahhorizon@gmail.com"]
    
    }
  }