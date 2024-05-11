# Build-an-AWS-Cloud-Infrastructure-using-Terraform

Create a shared network module to create a VPC with a dynamic number of subnets with dynamic data for each one.
Creating workspaces for both development and production environments in different regions. 
Deploy a VPC with public and private subnets, an EC2 instance as Bastion in the public and another one in the private for application deployment.
Creating an elastic cache and RDs in the private subnet.
Create the state files of the envs on an S3 bucket and manage the state lock using a DynamoDB table. Create a lambda function to trigger the state files on the backend S3 bucket and send an email once they have been changed.