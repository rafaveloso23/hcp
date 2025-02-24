module "project" {
  source = "./modules/tfe-projects"

  organization_name = var.organization_name
  project_name      = var.project_name
}


module "worspaces" {
  source = "./modules/tfe-workspaces"

  workspace_name    = var.workspace_name
  organization_name = var.organization_name
  project_id        = module.project.tfe_project_id
}
