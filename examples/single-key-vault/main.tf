#--------------------------------------------*--------------------------------------------
# Example: Single Azure Key Vault
#--------------------------------------------*--------------------------------------------

resource "azurerm_resource_group" "example" {
  name     = "example-rg"
  location = "eastus"
  tags = {
    environment = "dev"
  }
}

data "azurerm_client_config" "current" {}

module "key-vault" {
  source = "../.." # Use the relative path to the module"
  key_vault_name = "example-kv-2433"
  key_vault_location = "eastus"
  key_vault_resource_group_name = azurerm_resource_group.example.name
  key_vault_tenant_id = data.azurerm_client_config.current.tenant_id
  key_vault_sku_name = "standard"
  key_vault_enabled_for_disk_encryption = true
  key_vault_purge_protection_enabled = true
  key_vault_tags = {
    environment = "dev"
  }
  key_vault_network_acls_deny_all = false 
}

# end
#--------------------------------------------*--------------------------------------------