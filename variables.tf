variable "name" {
  description = "The name of the Lighthouse Definition. Changing this forces a new resource to be created"
  type        = string
}

variable "assignment_name" {
  description = "A unique UUID/GUID which identifies this lighthouse assignment- one will be generated if not specified. Changing this forces a new resource to be created"
  type        = string
  default     = null
}

variable "description" {
  description = "A description of the Lighthouse Definition"
  type        = string
  default     = null
}

variable "location" {
  description = "The Azure Region where the Subscription Template Deployment should exist"
  type        = string
  default     = null
}

variable "principal_id" {
  description = "Principal ID of the security group/service principal/user that would be assigned permissions to the projected subscription"
  type        = string
}

variable "principal_display_name" {
  description = "The display name of the security group/service principal/user that would be assigned permissions to the projected subscription."
  type        = string
  default     = null
}

variable "role_definition_id" {
  description = "The role definition identifier. This role will define the permissions that are granted to the principal. This cannot be an Owner role"
  type        = string
}

variable "managing_tenant_id" {
  description = "The ID of the managing tenant. Changing this forces a new resource to be created"
  type        = string
}

variable "scope" {
  description = "The ID of the managed subscription. Changing this forces a new resource to be created"
  type        = string
}

variable "tags" {
  description = "Tags to apply to all resources created."
  type        = map(string)
  default     = {}
}
