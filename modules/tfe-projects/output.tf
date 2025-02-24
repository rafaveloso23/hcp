output "tfe_project_name" {
  value = tfe_project.project["new"].name 
}

output "tfe_project_id" {
  value = tfe_project.project["new"].id
}