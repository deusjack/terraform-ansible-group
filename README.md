# module-group
Terraform module to create a group on Linux with Ansible

> [!Warning]
> * This module doesn't have resources with a traditional state.
> * Make sure to set var.external_triggers for any changes that require an update other than variables.
> * This module doesn't delete the changes on the target system on destroy.

# Terraform Docs

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8 |
| <a name="requirement_ansible"></a> [ansible](#requirement\_ansible) | >= 1, < 2 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3, < 4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ansible"></a> [ansible](#provider\_ansible) | 1.3.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ansible_playbook.group](https://registry.terraform.io/providers/ansible/ansible/latest/docs/resources/playbook) | resource |
| [null_resource.external](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.group](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.variables](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_external_triggers"></a> [external\_triggers](#input\_external\_triggers) | Triggers for rerunning the group playbook except variables | `map(string)` | `{}` | no |
| <a name="input_gid"></a> [gid](#input\_gid) | The id of the group | `number` | n/a | yes |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | The hostname of linux machine the group will be created on | `string` | n/a | yes |
| <a name="input_is_system_group"></a> [is\_system\_group](#input\_is\_system\_group) | If group is a system group | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the group | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gid"></a> [gid](#output\_gid) | The id of the group |
| <a name="output_hostname"></a> [hostname](#output\_hostname) | The hostname of linux machine the group was created on |
| <a name="output_is_system_group"></a> [is\_system\_group](#output\_is\_system\_group) | If group is a system group |
| <a name="output_name"></a> [name](#output\_name) | Name of the group |
| <a name="output_triggers"></a> [triggers](#output\_triggers) | Trigger for group changes to be used by other null\_resources/modules |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
