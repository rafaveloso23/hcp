terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "0.64.0"
    }
  }
}

provider "tfe" {
  token = "hLwMEHLg4BGDTQ.atlasv1.qoFtHi8TMGsMk7EbMyJFqZzk94draNsxMALbx0nOWUy21y77gJgDOmygZZTagI5vwJI"
}