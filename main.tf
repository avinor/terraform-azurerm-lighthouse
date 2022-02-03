terraform {
  required_version = ">= 0.13"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.93.1"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_lighthouse_definition" "definition" {
  name               = "${var.name}-lhd"
  description        = var.description
  managing_tenant_id = var.managing_tenant_id
  scope              = var.scope

  authorization {
    principal_id           = var.principal_id
    role_definition_id     = var.role_definition_id
    principal_display_name = var.principal_display_name
  }
}

resource "azurerm_lighthouse_assignment" "assignment" {
  name                     = var.assignment_name
  scope                    = var.scope
  lighthouse_definition_id = azurerm_lighthouse_definition.definition.id
}