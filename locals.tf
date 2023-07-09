locals {
  vpc_cidr = "10.123.0.0/16"

}
#####--LOCAL SECURITY GROUP--#####

locals {
  security_groups = {
    public = {
      name        = "public_sg"
      description = "SG for Public Access"
      ingress = {
        ssh = {
          from        = 22
          to          = 22
          protocol    = "tcp"
          cidr_blocks = ["70.49.3.137/32"]
        }
        http = {
          from        = 80
          to          = 80
          protocol    = "tcp"
          cidr_blocks = [var.access_ip]
        }
      }
    }
    rds = {
      name        = "rds_sg"
      description = "RDS Access"
      ingress = {
        mysql = {
          from        = 3306
          to          = 3306
          protocol    = "tcp"
          cidr_blocks = [local.vpc_cidr]
        }
      }

    }
  }
}


