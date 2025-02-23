#--------------------------------------------*--------------------------------------------
# Example: Single Azure Key Vault
#--------------------------------------------*--------------------------------------------

output "key_vault_id" {
  value = module.key-vault.key_vault_id
}

output "key_vault_name" {
  value = module.key-vault.key_vault_name
}

output "key_vault_location" {
  value = module.key-vault.key_vault_location
}


# end
#--------------------------------------------*--------------------------------------------