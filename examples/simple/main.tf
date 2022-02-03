module "b2clogs" {
  source = "../../"

  name = "some-lighthouse-name"

  managing_tenant_id     = "33333333-1111-1111-1111-111111111111"
  principal_id           = "11111111-1111-1111-1111-111111111111"
  role_definition_id     = "22222222-1111-1111-1111-111111111111"
  principal_display_name = "Some display name"
  definition_scope       = "/subscriptions/00000000-0000-0000-0000-111111111111"

  assignment_scope = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myGroup"
}
