## GET ORGANIZATION
###################
data "tfe_organization" "test_organization" {
  name = var.organization_name
}
resource "tfe_workspace" "workspace" {
  for_each = { "new" = var.workspace_name }

  name         = var.workspace_name
  organization = data.tfe_organization.test_organization.name
  project_id = var.project_id
}
