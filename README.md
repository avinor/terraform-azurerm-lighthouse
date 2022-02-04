# Azure Lighthouse

Terraform module to manage an [Azure
Lighthouse](https://docs.microsoft.com/en-us/azure/active-directory-b2c/azure-monitor)
definition and assignment.

# Usage

The example below grants access to log analytics for a Azure B2C tenant,
like described in [this
tutorial](https://docs.microsoft.com/en-us/azure/active-directory-b2c/azure-monitor)
This example uses [tau](https://github.com/avinor/tau).

```
module {
  source = "github.com/avinor/terraform-azurerm-lighthouse"
}

inputs {

  name = "log-analytics-for-b2c"

  description = "Allow The B2C tenant to use Log Analytics"
  managing_tenant_id = "00000000-0000-0000-0000-000000000000"

  definition_scope = "/subscriptions/00000000-0000-0000-0000-000000000001"
  location = "westeurope"

  principal_id =  "00000000-0000-0000-0000-000000000002"
  role_definition_id = "b24988ac-6180-42a0-ab88-20f7382dd24c"
  principal_display_name = "Azure AD B2C tenant administrators"

  assignment_scope = "/subscriptions/00000000-0000-0000-0000-000000000001/resourceGroups/log-analytics-rg"
}

```
