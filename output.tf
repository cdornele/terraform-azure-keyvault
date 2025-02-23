#--------------------------------------------*--------------------------------------------
# Module: Azure Key Vault - Output
#--------------------------------------------*--------------------------------------------

output "key_vault_id" {
  description = "The ID of the Key Vault"
  value       = azurerm_key_vault.this.id
}

output "key_vault_name" {
  description = "The name of the Key Vault"
  value       = azurerm_key_vault.this.name
}

output "key_vault_location" {
  description = "The location/region where the Key Vault is created"
  value       = azurerm_key_vault.this.location
}

output "key_vault_uri" {
  description = "The URI of the Key Vault"
  value       = azurerm_key_vault.this.vault_uri
}

# end
#--------------------------------------------*--------------------------------------------