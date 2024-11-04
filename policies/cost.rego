package infracost # You must specify infracost as the Rego package name

deny[out] {
  
  maxDiff = 10.0

  msg := sprintf(
    "Total monthly cost diff must be less than $%.2f (actual diff is $%.2f)",
    [maxDiff, to_number(input.diffTotalMonthlyCost)],
  )

  # out defines the output for this policy. This output must be formatted with a `msg` and `failed` property.
  out := {
    "msg": msg,
  
    "failed": to_number(input.diffTotalMonthlyCost) >= maxDiff
  }
}