variable "ami_id" {
  description = "EC2 AMI ID"
  type        = string
  default     = "ami-0f58b397bc5c1f2e8"
}
variable "instance_type" {}
variable "subnet_id" {}
variable "sg_id" {}
variable "key_name" {}
variable "instance_name" {}
