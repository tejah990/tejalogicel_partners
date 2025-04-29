resource "aws_budgets_budget" "Computebudget" {
  name              = var.budget.name
  budget_type       = var.budget_type
  limit_amount      = var.limit_amount
  limit_unit        = var.limit_unit
  time_unit         = var.time_unit
  cost_filters = {
  Service = "Amazon Elastic Compute Cloud - Compute"
  }
  notification {
    comparison_operator = "GREATER_THAN"
    notification_type   = "ACTUAL"
    threshold           = var.threshold
    threshold_type      = "PERCENTAGE"
    subscriber_email_addresses  = ["tejahhorizon@gmail.com"]

    }
  }