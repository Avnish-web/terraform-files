provider "aws" {
  region     = "ap-south-1"
  access_key = "Your Access key"  # Replace with your actual AWS access key
  secret_key = "Your Secret key"  # Replace with your actual AWS secret key
}
resource "aws_instance" "AWSVM_Server" {
  count           = "1"
  ami             = "ami-0f918f7e67a3323f0"   # Amazon Linux 2 AMI for ap-south-1 (Mumbai)
  instance_type   = "t2.micro"
  key_name        = "Your Keypair Name"  # keypair 
  security_groups = ["Your security group"]   # Security group 
  tags = {
    Name = "VM-1"
  }
}
