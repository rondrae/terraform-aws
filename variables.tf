###------------root/tfvars--------#

variable "access_ip" {
  type = string
}
###- DB variables

variable "dbname" {
  type = string
}
variable "dbuser" {
  type      = string
  sensitive = true
}
variable "dbpassword" {
  type      = string
  sensitive = true
}