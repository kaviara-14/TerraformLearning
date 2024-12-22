provider "aws" {
  region = "us-east-1"
}


module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami_input = "ami-1229930022"
    instance_type_input = "t2.micro"
    subnet_id_input = "sub1-28993008191"
}