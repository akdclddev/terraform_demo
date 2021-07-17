variable "region" {
  default = "us-west-2"
  type = string
  description = "The Default region used"
}

variable "azs" {
  type = list(string)
  default = ["us-west-2a","us-west-2b"]
}
variable "ami" {
  default = "ami-0dc8f589abe99f538"
  type = string
  description = "The AMI used"
}

variable "name" {
  default = "L&T_Demo_tf"
  type = string
}