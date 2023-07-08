#---networking/variables.tf

variable "vpc_cidr" {
  type = string
}
variable "public_cidrs" {
  type = list
}
variable "private_cidrs" {
  type = list
}
variable "public_sn_count" {
  
}
variable "private_sn_count" {
  
}
variable "max_subnets" {
  type = number
}