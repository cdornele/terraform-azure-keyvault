<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 4.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault.this](https://registry.terraform.io/providers/hashicorp/azurerm/4.10.0/docs/resources/key_vault) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key_vault_enabled_for_disk_encryption"></a> [key\_vault\_enabled\_for\_disk\_encryption](#input\_key\_vault\_enabled\_for\_disk\_encryption) | Specifies whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys. | `bool` | n/a | yes |
| <a name="input_key_vault_location"></a> [key\_vault\_location](#input\_key\_vault\_location) | The location/region where the Key Vault should be created | `string` | n/a | yes |
| <a name="input_key_vault_name"></a> [key\_vault\_name](#input\_key\_vault\_name) | The name of the Key Vault | `string` | n/a | yes |
| <a name="input_key_vault_network_acls"></a> [key\_vault\_network\_acls](#input\_key\_vault\_network\_acls) | A list of network ACLs for the Key Vault | `map` | `{}` | no |
| <a name="input_key_vault_network_acls_deny_all"></a> [key\_vault\_network\_acls\_deny\_all](#input\_key\_vault\_network\_acls\_deny\_all) | Specifies whether to deny all network traffic to the Key Vault | `bool` | `true` | no |
| <a name="input_key_vault_purge_protection_enabled"></a> [key\_vault\_purge\_protection\_enabled](#input\_key\_vault\_purge\_protection\_enabled) | Specifies whether 'soft delete' functionality is enabled for this key vault. | `bool` | n/a | yes |
| <a name="input_key_vault_resource_group_name"></a> [key\_vault\_resource\_group\_name](#input\_key\_vault\_resource\_group\_name) | The name of the Resource Group in which the Key Vault should be created | `string` | n/a | yes |
| <a name="input_key_vault_sku_name"></a> [key\_vault\_sku\_name](#input\_key\_vault\_sku\_name) | The SKU name of the Key Vault | `string` | n/a | yes |
| <a name="input_key_vault_tags"></a> [key\_vault\_tags](#input\_key\_vault\_tags) | A mapping of tags to assign to the resource. | `map(string)` | n/a | yes |
| <a name="input_key_vault_tenant_id"></a> [key\_vault\_tenant\_id](#input\_key\_vault\_tenant\_id) | The Tenant ID where the Key Vault should be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_vault_id"></a> [key\_vault\_id](#output\_key\_vault\_id) | The ID of the Key Vault |
| <a name="output_key_vault_location"></a> [key\_vault\_location](#output\_key\_vault\_location) | The location/region where the Key Vault is created |
| <a name="output_key_vault_name"></a> [key\_vault\_name](#output\_key\_vault\_name) | The name of the Key Vault |
| <a name="output_key_vault_uri"></a> [key\_vault\_uri](#output\_key\_vault\_uri) | The URI of the Key Vault |
<!-- END_TF_DOCS -->