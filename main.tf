resource "cloudflare_api_token" "api_tokens" {
  for_each = var.api_tokens

  name       = each.value.name
  policies   = each.value.policies
  condition  = each.value.condition
  expires_on = each.value.expires_on
  not_before = each.value.not_before
  status     = each.value.status
}

