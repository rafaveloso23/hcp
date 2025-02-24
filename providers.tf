terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "0.64.0"
    }
  }
}

provider "tfe" {
  token = var.token
}