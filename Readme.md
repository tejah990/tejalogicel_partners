# AWS Billing Alarms Infrastructure

This project implements AWS billing alarms using Terraform to monitor and alert on AWS spending across different service categories.

## Overview

The infrastructure creates four types of AWS budget alarms:
- Project-wide budget alarm
- Compute services budget alarm
- Storage services budget alarm
- Network services budget alarm

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12 or later)
- An S3 bucket for storing Terraform state

## Module Configuration

### Compute Budget Variables

```hcl
compute_budget_name     - Name of the AWS Budget (Required)
compute_budget_type     - Type of budget: COST/USAGE/RI_COVERAGE (Default: COST)
compute_limit_amount    - Budget limit amount (Required)
compute_limit_unit      - Currency for budget (Default: USD)
compute_time_unit       - Time unit: MONTHLY/QUARTERLY/ANNUALLY (Default: MONTHLY)
compute_threshold       - Alert threshold percentage (Default: 80)
compute_time_period_start - Start date YYYY-MM-DD (Optional)
compute_time_period_end   - End date YYYY-MM-DD (Optional)
compute_notification_email - Email for alerts (Required)
```

## Budget Thresholds

The following budget thresholds are configured in `terraform.tfvars`:

```hcl
Project Budget: $100.00
Compute Budget: $60.00
Storage Budget: $40.00
Network Budget: $20.00
```

### Alert Thresholds

All budgets are configured to alert at 80% of the threshold value.

## Module Structure

- `budget-alarm/`: Project-wide budget monitoring
- `compute-budget/`: EC2 and compute services monitoring
- `storage-budget/`: S3 and storage services monitoring
- `network-budget/`: Data transfer monitoring 

## Usage

1. Initialize Terraform:
```bash
terraform init
```

2. Review planned changes:
```bash
terraform plan
```

3. Apply the configuration:
```bash
terraform apply
```

## Notifications

Budget alerts will be sent to the configured email address when spending reaches the threshold levels.

## State Management

Terraform state is stored in S3:
- Bucket: `teja-terraform-logicel-test`
- Key: `terraform.tfstate`
- Region: `us-east-1`
