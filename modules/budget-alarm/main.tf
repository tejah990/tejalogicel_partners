provider "aws" {
  region = "us-east-1"  # Modify as required
}

resource "aws_budgets_budget" "Costbudget" {
  name       = "mytestbudget"
  budget_type       = var.budget_type
  limit_amount      = var.limit_amount
  limit_unit        = var.limit_unit
  time_unit         = var.time_unit
  time_period_start = var.time_period_start
  time_period_end   = var.time_period_end
  cost_filter {
      name = "Service"
              values = [
                      "Amazon Elastic Compute Cloud - Compute",
                          ]
                            }
  notification {
    comparison_operator = "GREATER_THAN"
    notification_type   = "ACTUAL"
    threshold           = var.threshold
    threshold_type      = "PERCENTAGE"
    subscriber_email_addresses  = ["tejahhorizon@gmail.com"]


    
    }
  }
