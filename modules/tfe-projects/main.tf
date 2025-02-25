# Create new project if it does not exist
resource "tfe_project" "project" {
  for_each     = { "new" = var.project_name }
  organization = var.organization_name
  name         = var.project_name
}

resource "tfe_variable_set" "project_var_set" {
  name         = "vs-${tfe_project.project["new"].name}"
  description  = "variable set test."
  organization = var.organization_name
}

resource "tfe_variable" "var" {
  for_each = local.matched_resources

  key             = each.key
  value           = each.value
  category        = "terraform"
  description     = "Resource ${each.key} for ${local.project_domain} in ${local.project_env}"
  sensitive       = false
  variable_set_id = tfe_variable_set.project_var_set.id
}

resource "tfe_project_variable_set" "project_var_set" {
  variable_set_id = tfe_variable_set.project_var_set.id
  project_id      = tfe_project.project["new"].id
}