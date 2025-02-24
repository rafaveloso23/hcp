# ## GET ALL Projects
# ###################
data "tfe_projects" "all" {
  organization = "veloso"
}

locals {
  # PROJECTS NAME LIST == NAME
  project_names_list = tolist([for project in data.tfe_projects.all.projects : project.name])
  # VALIDATE IF PROJECT EXISTS
  validate_projects = contains(local.project_names_list, var.project_name)
  # GET PROJECT ID TO IMPORT
  project_id = try(
    one([for project in data.tfe_projects.all.projects : project.id if project.name == var.project_name]),
    null
  )
}

# #Import condition, will only import the resource if the object_id_found = true, before the first execution.
import {
  for_each = local.validate_projects ? { "default" = true } : {}
  to       = module.project.tfe_project.project["new"]
  id       = local.project_id
}