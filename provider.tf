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
  account_id = 3868967
  api_key    = "NRAK-KPVD14JYKT2SMHAZA33IY0E2NTJ" # Usually prefixed with 'NRAK'
  region     = "US"                               # Valid regions are US and EU
}