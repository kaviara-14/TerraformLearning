resource "aws_instance" "ec2_server" {
    ami = var.ami_input
    instance_type = var.instance_type_input
    subnet_id = var.subnet_id_input

}