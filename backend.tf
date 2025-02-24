terraform {
  cloud {
    organization = "veloso"
    hostname     = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      project = "Default Project"
      name    = "testrvs"
    }
  }
}
