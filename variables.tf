variable "project_name" {
  description = "The name of the project to create"
  type        = string
  default     = "rvs"
}

variable "workspace_name" {
  description = "The name of the workspace to create"
  type        = string
  default     = "novoworkspace"
}

variable "organization_name" {
  description = "The name of the organization to select"
  type        = string
  default     = "veloso"
}

variable "token" {
  description = "The token to authenticate with Terraform Cloud"
  type        = string
}

variable "variable_set_name" {
  description = "The token to authenticate with Terraform Cloud"
  type        = string
  default     = "vset-velosinho"
}
