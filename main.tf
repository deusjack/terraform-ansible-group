resource "ansible_playbook" "group" {
  name                    = var.hostname
  playbook                = "${path.module}/directory.yaml"
  replayable              = false
  ignore_playbook_failure = false
  extra_vars = {
    group_name      = var.name
    is_system_group = var.is_system_group
    gid             = tostring(var.gid)
  }
  lifecycle {
    replace_triggered_by = [
      null_resource.group,
      null_resource.external,
      null_resource.variables
    ]
  }
}
