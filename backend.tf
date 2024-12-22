terraform {
  backend "s3" {
    bucket = "kaviarasu-demo-remoteBackend"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
