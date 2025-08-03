provider "aws" {
  region     = "ap-south-1"
  access_key = "Your Access key"
  secret_key = "Your Secret key"
}
resource "aws_instance" "AWSVM_Server" {
  count           = var.instances_count
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = "terra"
  security_groups = ["launch-wizard-10"]
  tags = {
    Name = "terraform-vm-${count.index}"
  }
}

# creating VMs using variables
