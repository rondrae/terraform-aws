terraform {
  cloud {
    organization = "drae-terraform"

    workspaces {
      name = "mtc-dev"
    }
  }
}

