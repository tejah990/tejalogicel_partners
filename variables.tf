
variable "aws_region" {
  type        = string
  description = "AWS region where resources will be created"
  validation {
    condition     = contains(["us-east-1", "us-west-2"], var.aws_region)
    error_message = "The region must be either 'us-east-1' or 'us-west-2'"
  }
}



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


variable "cost_filters" {
  description = "Cost filters for the budget"
  type        = map(any)
  default     = {}
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
