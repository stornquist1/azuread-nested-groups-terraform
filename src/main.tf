terraform {
    required_providers {
        azuread = {
            source  = "hashicorp/azuread"
            version = "= 2.35.0"
        }
    }

    #backend "azurerm" {}
    backend "local" {
    }
}

provider "azuread" {
    environment    = var.environment
    tenant_id      = var.tenant_id
    #client_id     = var.client_id
    #client_secret = var.client_secret
    metadata_host  = var.metadata_host
}

resource "azuread_group" "example" {
    display_name    = "example"
    security_enabled = true
}

resource "azuread_group" "example2" {
    display_name    = "example2"
    members         = [azuread_group.example.id]
    security_enabled = true
}
