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