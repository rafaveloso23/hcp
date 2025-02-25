locals {
  # Example project name: "prj-financeiro-domain1-dev"
  project_name = var.project_name

  # Split the project name to extract parts
  project_parts = split("-", local.project_name)

  # Extract the domain and environment
  project_domain = local.project_parts[2]  # "domain1"
  project_env    = local.project_parts[3]  # "dev"

  # Retrieve the resources for the matched environment and domain
  matched_resources = local.env_values[local.project_env][local.project_domain]
}

locals {
  # Define values per environment and domain
  env_values = {
    dev = {
      domain1 = {
        virtual-network = "vnetdeverwer"
        subnet          = "snetdevsrfwerf"
        key-vault       = "kvdevsfwfer"
      }
      domain2 = {
        virtual-network = "vnetdevpluto"
        subnet          = "snetdevpluto"
        key-vault       = "kvdevpluto"
      }
      domain3 = {
        virtual-network = "vnetdevvenus"
        subnet          = "snetdevvenus"
        key-vault       = "kvdevvenus"
      }
      domain4 = {
        virtual-network = "vnetdevuranus"
        subnet          = "snetdevuranus"
        key-vault       = "kvdevuranus"
      }
    }
    hml = {
      domain1 = {
        virtual-network = "vnethmlsfwe"
        subnet          = "snethmlswwer"
        key-vault       = "kvhmlsfwfer"
      }
      domain2 = {
        virtual-network = "vnethmlpluto"
        subnet          = "snethmlpluto"
        key-vault       = "kvhmlpluto"
      }
      domain3 = {
        virtual-network = "vnethmlvenus"
        subnet          = "snethmlvenus"
        key-vault       = "kvhmlvenus"
      }
      domain4 = {
        virtual-network = "vnethmluranus"
        subnet          = "snethmluranus"
        key-vault       = "kvhmluranus"
      }
    }
    prd = {
      domain1 = {
        virtual-network = "vnetprdsfwer"
        subnet          = "snetprdwerfww"
        key-vault       = "kvprdsfwfer"
      }
      domain2 = {
        virtual-network = "vnetprdpluto"
        subnet          = "snetprdpluto"
        key-vault       = "kvprdpluto"
      }
      domain3 = {
        virtual-network = "vnetprdvenus"
        subnet          = "snetprdvenus"
        key-vault       = "kvprdvenus"
      }
      domain4 = {
        virtual-network = "vnetprduranus"
        subnet          = "snetprduranus"
        key-vault       = "kvprduranus"
      }
    }
  }

  # Generate the final structured map dynamically
  env_vars = { for env, domains in local.env_values :
    env => { for domain, resources in domains :
      domain => { for resource, value in resources :
        resource => {
          value       = value
          category    = "terraform"
          secret      = false
          description = "Resource ${resource} for ${domain} in ${env}"
        }
      }
    }
  }
}
