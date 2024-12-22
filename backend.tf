terraform {
  backend "s3" {
    bucket = "kaviarasu-demo-remoteBackend"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}
