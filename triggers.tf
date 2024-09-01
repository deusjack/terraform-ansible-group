#################
# ansible files #
#################

resource "null_resource" "group" {
  triggers = {
    directory = filemd5("${path.module}/group.yaml")
  }
}

#####################
# external triggers #
#####################

resource "null_resource" "external" {
  triggers = var.external_triggers
}

#############
# variables #
#############

resource "null_resource" "variables" {
  triggers = {
    name            = var.name
    gid             = var.gid
    is_system_group = var.is_system_group
  }
}
