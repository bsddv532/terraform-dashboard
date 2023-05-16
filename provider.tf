# Configure terraform
terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
# provider "newrelic" {
#   account_id = 3724791
#   api_key = "NRAK-V2UUEQ1MM5E2DBZOVVPLPX5QPJ1"    # Usually prefixed with 'NRAK'
#   region = "US"                    # Valid regions are US and EU
# }



provider "newrelic" {
  account_id = 3627500
  api_key    = "NRAK-A7QTJY3NOV9VF3HCAAU2UVJB7PX" # Usually prefixed with 'NRAK'
  region     = "US"                               # Valid regions are US and EU
}
