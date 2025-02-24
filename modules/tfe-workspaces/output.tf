output "tfe_workspace_name" {
  value = tfe_workspace.workspace["new"].name 
}

output "tfe_workspace_id" {
  value = tfe_workspace.workspace["new"].id
}