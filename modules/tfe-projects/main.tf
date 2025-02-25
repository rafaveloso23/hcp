# Create new project if it does not exist
resource "tfe_project" "project" {
  for_each     = { "new" = var.project_name }
  organization = var.organization_name
  name         = var.project_name
}

resource "tfe_variable_set" "gloabl_var_set" {
  name         = var.variable_set_name
  description  = "Global variable set."
  organization = var.organization_name
  global       = true

}

resource "tfe_variable" "var" {
  for_each        = local.env_vars
  key             = each.key
  value           = each.value.value
  category        = each.value.category
  description     = each.value.description
  sensitive       = each.value.secret
  variable_set_id = tfe_variable_set.gloabl_var_set.id
}

# resource "tfe_project_variable_set" "project_var_set" {
#   variable_set_id = tfe_variable_set.var_set.id
#   project_id      = tfe_project.project["new"].id
# }