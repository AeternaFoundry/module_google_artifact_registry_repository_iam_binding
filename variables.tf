variable "artifact_registry_repository_iam_bindings" {
  description = <<EOT
Map of artifact_registry_repository_iam_bindings, attributes below
Required:
    - members
    - repository
    - role
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members    = set(string)
    repository = string
    role       = string
    location   = optional(string)
    project    = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

