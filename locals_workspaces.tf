# ## GET the workspace
# ###################
data "tfe_workspace_ids" "all" {
  names        = ["*"]
  organization = var.organization_name
}

locals {
  # PROJECTS NAME LIST == NAME
  workspace_names_list = values(data.tfe_workspace_ids.all.full_names)

  # VALIDATE IF PROJECT EXISTS
  extracted_names     = [for name in local.workspace_names_list : split("/", name)[1]]
  validate_workspaces = contains(local.extracted_names, var.workspace_name)

  # GET PROJECT ID TO IMPORT
  all_workspace_id = data.tfe_workspace_ids.all.ids

  # Correct extraction of workspace ID based on workspace name
  worskpace_id = try(local.all_workspace_id[var.workspace_name], null)
}

# #Import condition, will only import the resource if the object_id_found = true, before the first execution.
import {
  for_each = local.validate_workspaces ? { "default" = true } : {}
  to       = module.worspaces.tfe_workspace.workspace["new"]
  id       = local.worskpace_id
}