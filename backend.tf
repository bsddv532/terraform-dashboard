terraform {
  backend "s3" {
    bucket = "deepaktfbackend-9962"
    key    = "finalterraform.tfstate"
    region = "us-east-1"
    # dynamodb_table = "dk3008"
  }
}