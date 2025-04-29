variable "compute_budget_name" {
  description = "Name of the AWS Budget"
  type        = string
}

variable "compute_budget_type" {
  description = "Type of budget: COST or USAGE or RI_COVERAGE etc."
  type        = string
  default     = "COST"
}
variable "compute_limit_amount" {
  description = "Budget limit"
  type        = string
}

variable "compute_limit_unit" {
  description = "Currency for the budget (e.g., USD)"
  type        = string
  default     = "USD"
}

variable "compute_time_unit" {
  description = "Time unit for the budget (MONTHLY, QUARTERLY, ANNUALLY)"
  type        = string
  default     = "MONTHLY"
}

variable "compute_threshold" {
  description = "Threshold to trigger notification"
  type        = number
  default     = 80
}

variable "compute_notification_email" {
  description = "Email address to receive budget alerts"
  type        = string
}