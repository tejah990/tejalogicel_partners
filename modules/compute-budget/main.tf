resource "aws_budgets_budget" "Computebudget" {
  name              = var.compute_budget_name
  budget_type       = var.compute_budget_type
  limit_amount      = var.compute_limit_amount
  limit_unit        = var.compute_limit_unit
  time_unit         = var.compute_time_unit
 
  notification {
    comparison_operator = "GREATER_THAN"
    notification_type   = "ACTUAL"
    threshold           = var.compute_threshold
    threshold_type      = "PERCENTAGE"
    subscriber_email_addresses  = ["tejahhorizon@gmail.com"]

    }
   cost_filter {
    name   = "Service"
    values = ["Amazon Elastic Compute Cloud - Compute"]
  }
  }