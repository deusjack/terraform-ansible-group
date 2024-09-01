output "triggers" {
  value = {
    playbook = ansible_playbook.group.id
  }
  description = "Trigger for group changes to be used by other null_resources/modules"
}

output "hostname" {
  value       = var.hostname
  description = "The hostname of linux machine the group was created on"
}

output "name" {
  value       = var.name
  description = "Name of the group"
}

output "gid" {
  value       = var.gid
  description = "The id of the group"
}

output "is_system_group" {
  value       = var.is_system_group
  description = "If group is a system group"
}
