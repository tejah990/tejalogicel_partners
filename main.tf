module "budget-alarm" {
  source             = "./modules/budget-alarm"
  budget_name        = "ProjectBudget"
  time_period_start = "2025-05-01_00:00"
  time_period_end   = "2025-12-31_00:00"
  limit_amount       = "100"
  notification_email = "team-devops@logiciel.io"
}
