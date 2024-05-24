terraform {
  required_providers {
    volterra = {
      source  = "volterraedge/volterra"
      version = ">= 0.11.21"
    }
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

