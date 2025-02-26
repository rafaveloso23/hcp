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

variable "ambiente" {
  type    = string
  default = "dev"
}

variable "centro_c" {
  type    = string
  default = "custoso"
}

variable "dominio" {
  type    = string
  default = "churros"
}
