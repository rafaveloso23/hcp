
output "project_names_list" {
  value = local.project_names_list
}

output "validate_projects" {
  value = local.validate_projects
}

output "project_id" {
  value = local.project_id
}

output "tfe_workspace_ids" {
  value = data.tfe_workspace_ids.all.ids
}

output "workspace_names_list" {
  value = local.workspace_names_list
}

output "validate_workspaces" {
  value = local.validate_workspaces
}

output "all_workspace_id" {
  value = local.all_workspace_id
}

output "worskpace_id" {
  value = local.worskpace_id
}

output "project_name" {
  value = local.project_name
}

output "locals_project_parts" {
  value = module.project.locals_project_parts
}

output "locals_project_domain" {
  value = module.project.locals_project_domain
}

output "locals_project_env" {
  value = module.project.locals_project_env
}

output "locals_matched_resources" {
  value = module.project.locals_matched_resources
}

output "locals_env_values" {
  value = module.project.locals_env_values
}