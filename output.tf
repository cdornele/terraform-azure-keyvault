#--------------------------------------------*--------------------------------------------
# Module: Azure Key Vault - Output
#--------------------------------------------*--------------------------------------------

output "id" {
  description = "The ID of the Key Vault"
  value       = azurerm_key_vault.this.id
}

output "name" {
  description = "The name of the Key Vault"
  value       = azurerm_key_vault.this.name
}

output "location" {
  description = "The location/region where the Key Vault is created"
  value       = azurerm_key_vault.this.location
}

output "uri" {
  description = "The URI of the Key Vault"
  value       = azurerm_key_vault.this.vault_uri
}

# end
#--------------------------------------------*--------------------------------------------