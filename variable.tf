variable "region" {
  type    = string
  default = "us-west-1"
}
variable "ami" {
 type    = string
  default = "ami-073e64e4c237c08ad"

}
variable "instance_count" {
  type    = number
  default = 3

}

variable "instance_type" {
  #type    = null
  default = "t2.micro"

}

variable "elastic_ip" {
  type = bool
  default = false
  
}
