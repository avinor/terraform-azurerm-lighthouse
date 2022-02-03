module "b2clogs" {
  source = "../../"

  name = "some-lighthouse-name"

  managing_tenant_id     = "33333333-1111-1111-1111-111111111111"
  principal_id           = "11111111-1111-1111-1111-111111111111"
  role_definition_id     = "22222222-1111-1111-1111-111111111111"
  principal_display_name = "Some display name"
  scope                  = "/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333"
}
