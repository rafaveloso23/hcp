locals {
  env_vars = {
    mercury = {
      value       = "closest_to_sun"
      category    = "terraform"
      secret      = false
      description = "The closest planet to the sun"
    }
    venus = {
      value       = "hottest_planet"
      category    = "terraform"
      secret      = false
      description = "The hottest planet in the solar system"
    }
    earth = {
      value       = "blue_planet"
      category    = "terraform"
      secret      = false
      description = "The only planet known to support life"
    }
    mars = {
      value       = "red_planet"
      category    = "terraform"
      secret      = false
      description = "The red planet"
    }
    jupiter = {
      value       = "gas_giant"
      category    = "terraform"
      secret      = false
      description = "The largest planet in the solar system"
    }
    saturn = {
      value       = "ringed_planet"
      category    = "terraform"
      secret      = false
      description = "The planet with the most rings"
    }
    uranus = {
      value       = "ice_giant"
      category    = "terraform"
      secret      = false
      description = "The coldest planet in the solar system"
    }
    neptune = {
      value       = "windy_planet"
      category    = "terraform"
      secret      = false
      description = "The windiest planet in the solar system"
    }
    pluto = {
      value       = "dwarf_planet"
      category    = "terraform"
      secret      = false
      description = "The dwarf planet"
    }
  }
}
