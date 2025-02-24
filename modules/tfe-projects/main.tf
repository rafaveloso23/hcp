## GET ORGANIZATION
###################
data "tfe_organization" "organization" {
  name = var.organization_name
}

# Create new project if it does not exist
resource "tfe_project" "project" {
  for_each     = { "new" = var.project_name }
  organization = data.tfe_organization.organization.name
  name         = var.project_name 
}