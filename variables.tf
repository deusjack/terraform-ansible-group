variable "external_triggers" {
  type        = map(string)
  description = "Triggers for rerunning the group playbook except variables"
  default     = {}
}

# Doesn't need a trigger. On change the playbooks is automatically replaced.
variable "hostname" {
  type        = string
  description = "The hostname of linux machine the group will be created on"
}

variable "name" {
  type        = string
  description = "Name of the group"
}

variable "gid" {
  type        = number
  description = "The id of the group"
}

variable "is_system_group" {
  type        = bool
  description = "If group is a system group"
  default     = false
}
