provider "aws" {
  region = "us-east-1"
}


module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami_input = <your AMI ID>
    instance_type_input = "t2.micro"
    subnet_id_input = <your subnet ID>
}


resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
 
  attribute {
    name = "LockID"
    type = "S"
  }
}
