variable "Project_budget_name" {
  description = "Name of the AWS Budget"
  type        = string
}

variable "Project_budget_type" {
  description = "Type of budget: COST or USAGE or RI_COVERAGE etc."
  type        = string
  default     = "COST"
}

variable "Project_limit_amount" {
  description = "Budget limit"
  type        = string
}

variable "Project_limit_unit" {
  description = "Currency for the budget (e.g., USD)"
  type        = string
  default     = "USD"
}

variable "Project_time_unit" {
  description = "Time unit for the budget (MONTHLY, QUARTERLY, ANNUALLY)"
  type        = string
  default     = "MONTHLY"
}

variable "Project_threshold" {
  description = "Threshold to trigger notification"
  type        = number
  default     = 80
}

variable "Project_time_period_start" {
  description = "Start date of budget in YYYY-MM-DD format"
  type        = string
  default     = null
}

variable "Project_time_period_end" {
  description = "End date of budget in YYYY-MM-DD format"
  type        = string
  default     = null
}

