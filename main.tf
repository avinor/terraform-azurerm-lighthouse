terraform {
  required_version = ">= 1.3"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.107.0"
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
  scope              = var.definition_scope

  authorization {
    principal_id           = var.principal_id
    role_definition_id     = var.role_definition_id
    principal_display_name = var.principal_display_name
  }
}

resource "azurerm_lighthouse_assignment" "assignment" {
  name                     = var.assignment_name
  scope                    = var.assignment_scope
  lighthouse_definition_id = azurerm_lighthouse_definition.definition.id
}