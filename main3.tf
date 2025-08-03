resource "aws_instance" "AWSVM_Server" {
  count           = var.instances_count
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = "terra"
  security_groups = ["launch-wizard-10"]
  user_data       = file("installHttpd.sh")
  tags = {
    Name = "terraform-vm-${count.index}"
  }
}
