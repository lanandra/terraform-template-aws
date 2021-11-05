# Create AWS Budgets

resource "aws_budgets_budget" "monthly" {
  name              = "monthly"
  budget_type       = "COST"
  limit_amount      = "15"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2021-11-01_00:00"

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 80
    threshold_type             = "PERCENTAGE"
    notification_type          = "ACTUAL"
    subscriber_email_addresses = ["luthfi.anandra@ludesdeveloper.com"]
  }
}