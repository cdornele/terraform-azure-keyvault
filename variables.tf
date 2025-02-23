#--------------------------------------------*--------------------------------------------
# Module: Azure Key Vault - Variables
#--------------------------------------------*--------------------------------------------

variable "key_vault_name" {
  description = "The name of the Key Vault"
  type        = string
}

variable "key_vault_location" {
  description = "The location/region where the Key Vault should be created"
  type        = string
}

variable "key_vault_resource_group_name" {
  description = "The name of the Resource Group in which the Key Vault should be created"
  type        = string
}

variable "key_vault_tenant_id" {
  description = "The Tenant ID where the Key Vault should be created"
  type        = string
}

variable "key_vault_sku_name" {
  description = "The SKU name of the Key Vault"
  type        = string
}

variable "key_vault_enabled_for_disk_encryption" {
  description = "Specifies whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys."
  type        = bool
}

variable "key_vault_purge_protection_enabled" {
  description = "Specifies whether 'soft delete' functionality is enabled for this key vault."
  type        = bool
}

variable "key_vault_tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}

variable "key_vault_network_acls_deny_all" {
  description = "Specifies whether to deny all network traffic to the Key Vault"
  type        = bool
  default     = true
}

variable "key_vault_network_acls" {
  description = "A list of network ACLs for the Key Vault"
  default = {}
}

# end
#--------------------------------------------*--------------------------------------------