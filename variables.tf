
variable "aws_region" {
  type        = string
  description = "AWS region where resources will be created"
  validation {
    condition     = contains(["us-east-1", "us-west-2"], var.aws_region)
    error_message = "The region must be either 'us-east-1' or 'us-west-2'"
  }
}

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

variable "Project_notification_email" {
  description = "Email address to receive budget alerts"
  type        = string
}

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

variable "storage_budget_name" {
  description = "Name of the AWS Budget"
  type        = string
}

variable "storage_budget_type" {
  description = "Type of budget: COST or USAGE or RI_COVERAGE etc."
  type        = string
  default     = "COST"
}

variable "storage_limit_amount" {
  description = "Budget limit"
  type        = string
}
variable "storage_limit_unit" {
  description = "Currency for the budget (e.g., USD)"
  type        = string
  default     = "USD"
}

variable "storage_time_unit" {
  description = "Time unit for the budget (MONTHLY, QUARTERLY, ANNUALLY)"
  type        = string
  default     = "MONTHLY"
}

variable "storage_threshold" {
  description = "Threshold to trigger notification"
  type        = number
  default     = 80
}

variable "storage_notification_email" {
  description = "Email address to receive budget alerts"
  type        = string
}