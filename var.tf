variable "ami" {
  description = "Amazon Machine Image Value"
  default     = "ami-0f918f7e67a3323f0"
}

variable "instance_type" {
  description = "Amazon Instance Type"
  default     = "t2.micro"
}

variable "instances_count" {
  description = "total no. of instances"
  default     = "2"
}
