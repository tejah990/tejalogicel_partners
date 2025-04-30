variable "network_budget_name" {
  description = "Name of the AWS Budget"
  type        = string
}

variable "network_budget_type" {
  description = "Type of budget: COST or USAGE or RI_COVERAGE etc."
  type        = string
  default     = "COST"
}
variable "network_limit_amount" {
  description = "Budget limit"
  type        = string
}
variable "network_limit_unit" {
  description = "Currency for the budget (e.g., USD)"
  type        = string
  default     = "USD"
}

variable "network_time_unit" {
  description = "Time unit for the budget (MONTHLY, QUARTERLY, ANNUALLY)"
  type        = string
  default     = "MONTHLY"
}

variable "network_threshold" {
  description = "Threshold to trigger notification"
  type        = number
  default     = 80
}

