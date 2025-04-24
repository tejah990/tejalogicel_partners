variable "budget_name" {
  description = "Name of the AWS Budget"
  type        = string
}

variable "budget_type" {
  description = "Type of budget: COST or USAGE or RI_COVERAGE etc."
  type        = string
  default     = "COST"
}

variable "limit_amount" {
  description = "Budget limit"
  type        = string
}

variable "limit_unit" {
  description = "Currency for the budget (e.g., USD)"
  type        = string
  default     = "USD"
}

variable "time_unit" {
  description = "Time unit for the budget (MONTHLY, QUARTERLY, ANNUALLY)"
  type        = string
  default     = "MONTHLY"
}

variable "threshold" {
  description = "Threshold to trigger notification"
  type        = number
  default     = 80
}

variable "time_period_start" {
  description = "Start date of budget in YYYY-MM-DD format"
  type        = string
  default     = null
}

variable "time_period_end" {
  description = "End date of budget in YYYY-MM-DD format"
  type        = string
  default     = null
}

variable "notification_email" {
  description = "Email address to receive budget alerts"
  type        = string
}
