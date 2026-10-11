variable "api_tokens" {
  description = <<EOT
Map of api_tokens, attributes below
Required:
    - name
    - policies
Optional:
    - condition
    - expires_on
    - not_before
    - status
EOT

  type = map(object({
    name = string
    policies = list(object({
      effect = string
      permission_groups = list(object({
        id = string
      }))
      resources = string
    }))
    condition = optional(object({
      request_ip = optional(object({
        in     = optional(list(string))
        not_in = optional(list(string))
      }))
    }))
    expires_on = optional(string)
    not_before = optional(string)
    status     = optional(string)
  }))
}

