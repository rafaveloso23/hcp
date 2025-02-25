output "tfe_project_name" {
  value = tfe_project.project["new"].name 
}

output "tfe_project_id" {
  value = tfe_project.project["new"].id
}

output "locals_project_parts" {
  value = local.project_parts
}

output "locals_project_domain" {
  value = local.project_domain
}

output "locals_project_env" {
  value = local.project_env
}

output "locals_matched_resources" {
  value = local.matched_resources
}

output "locals_env_values" {
  value = local.env_values
}