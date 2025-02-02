#
# Contextual Fields
#

variable "context" {
  description = <<-EOF
Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.

Examples:
```
context:
  project:
    name: string
    id: string
  environment:
    name: string
    id: string
  resource:
    name: string
    id: string
```
EOF
  type        = map(any)
  default     = {}
}

variable "name" {
  type = string
}

variable "image_id" {
  type = string
}

variable "flavor_id" {
  type = string
}

variable "az" {
  type = string
}

variable "network_subnet_id" {
  type = string
}
