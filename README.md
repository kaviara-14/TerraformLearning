This Terraform configuration demonstrates a modular approach to provisioning an AWS EC2 instance. It incorporates the following features:

Features:

**1.Modular Structure:** The configuration is divided into reusable modules for better organization and scalability.The modules/ec2 directory encapsulates all logic related to the EC2 instance creation.

**2.Remote Backend with State Locking:** The Terraform state file is stored in an S3 bucket for centralized management.State locking is enabled using a DynamoDB table to prevent concurrent modifications.

**3.Parameterization:** Variables are used to customize the EC2 instance type, AMI ID, key pair, subnet ID, security group, and tags.The setup allows flexibility to adapt to different environments or requirements.

**4.Outputs:** Outputs provide essential information, such as the EC2 instance ID, for use in other modules or for referencing.

**5. Security:** The state file is encrypted at rest using S3 bucket encryption.A locking mechanism ensures the integrity of the state during operations.

![image](https://github.com/user-attachments/assets/6d43475e-9f52-4817-bdb4-8b2f041334ca)
