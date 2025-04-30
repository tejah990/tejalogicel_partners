module "budget-alarm" {
  source             = "./modules/budget-alarm"
  Project_budget_name        = var.Project_budget_name
  Project_limit_amount       = var.Project_limit_amount
}
module "compute-budget" {
  source             = "./modules/compute-budget"
  compute_budget_name        = var.compute_budget_name
  compute_limit_amount       = var.compute_limit_amount
}
module "storage-budget" {
  source             = "./modules/storage-budget"
  storage_budget_name        = var.storage_budget_name
  storage_limit_amount       = var.storage_limit_amount
}
module "network-budget" {
  source             = "./modules/network-budget"
  network_budget_name     =    var.network_budget_name
  network_limit_amount       = var.network_limit_amount
}

resource "aws_budgets_budget" "ec2_usage_budget" {
  name              = "ec2-monthly-usage-budget"
  budget_type       = "USAGE"
  limit_amount      = "0.20"                    # e.g. max 720 hours per month
  limit_unit        = "HOURS"
  time_unit         = "DAILY"



  notification {
    comparison_operator = "GREATER_THAN"
    threshold           = 30
    threshold_type      = "PERCENTAGE"
    notification_type   = "ACTUAL"
    subscriber_email_addresses  = ["phonexid65@gmail.com"]
  }
  # Removed cost_filters block because it's not valid for USAGE budgets.
}