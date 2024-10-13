# Terraform Learning

1. Provider
2. Muliple Provider
3. Multiple Region

          provider "aws" {
              alias = "us-east-1"
              region = "us-east-1"
          }
          
          provider "aws" {
              alias = "us-west-1"
              region = "us-west-1"
          }
          
          resource "aws_instance" "ec2_instance" {
              ami = "12345"
              instance_type = "t2.micro"
              provider = "aws.us-east-1"
          }
          
          resource "aws_instance" "ec2_instance" {
              ami = "12345"
              instance_type = "t2.micro"
              provider = aws.us-west-1
          }


5. Variables

          variable "input_amiId" {
              description = "ami Id for ec2 instance"
              type = string
          }
          
          variable "input_instanceType" {
              description = "Instance type for ec2"
              type = string
          }
          
          
          provider "aws" {
              region = "us-east-1"
          }
          
          resource "aws_instance" "ec2_instance" {
              ami = var.input_amiId
              instance_type = var.input_instanceType
          }
          
          output "publicIp_Address" {
              description = "public Ip"
              value = aws_instance.ec2_instance.public_ip
          }
          6. tfvars
          7. Conditional Expressions
