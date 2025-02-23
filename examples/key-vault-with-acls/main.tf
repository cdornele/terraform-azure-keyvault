#--------------------------------------------*--------------------------------------------
# Example: Azure Key Vault with Access Control List (ACLs)
#--------------------------------------------*--------------------------------------------

resource "azurerm_resource_group" "example" {
  name     = "example-rg"
  location = "eastus"
  tags = {
    environment = "dev"
  }
}


resource "azurerm_virtual_network" "example" {
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/24"]

  service_endpoints = ["Microsoft.KeyVault"]
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
  key_vault_network_acls = {
    bypass = "AzureServices"
    default_action = "Deny"
    ip_rules = ["100.100.100.100"]
    virtual_network_subnet_ids = [azurerm_subnet.example.id]
  }
}


# end
#--------------------------------------------*--------------------------------------------